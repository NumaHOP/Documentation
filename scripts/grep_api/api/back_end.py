from tree_sitter_language_pack import get_language, get_parser
from tree_sitter import Tree, Query, Node, Parser, Language, Range
from typing import TypedDict, Self, Optional
from sys import stderr
import utils as u
import os
import re

java_lang: Language = get_language("java")
java_parser: Parser = get_parser("java")


path_var_pat = re.compile(
    r"""
    @PathVariable
    (?:
        [(]
            (?P<real_name> .*? )
        [)]
    )?
    \sfinal
    \s(?P<ty> [\w\s<>]*? )
    \s(?P<var_name> \w* )
    [),]
""",
    re.VERBOSE,
)
class PathVarMatch(TypedDict):
    real_name: Optional[str]
    ty: str
    var_name: str

req_param_pat = re.compile(
    r"""
    @RequestParam
    (?:
        [(]
            (?P<param> (?:[^)]|\s)*? )
        [)]
    )?
    \sfinal
    \s(?P<ty> [\w\s<>]* )
    \s(?P<var_name> \w* )
    [),]
""",
    re.VERBOSE,
)
class ReqParamMatch(TypedDict):
    param: Optional[str]
    ty: str
    var_name: str

req_param_name_pat = re.compile(
    r"""
    (?:name|value)\s=\s"(?P<named>.*?)"
    |^"(?P<unnamed>.*?)"$
""",
    re.VERBOSE,
)
class ReqParamNameMatch(TypedDict):
    named: Optional[str]
    unnamed: Optional[str]

req_param_req_pat = re.compile(
    r"""
    required \s=\s (true|false)
""",
    re.VERBOSE,
)

req_param_dval_pat = re.compile(
    r"""
    defaultValue \s=\s "(?P<dval>.*?)"
""",
    re.VERBOSE,
)
class ReqParamDvalMatch(TypedDict):
    dval: str

mapping_method_pat = re.compile(
    r"""
    \s*@RequestMapping[(].*method\s=\sRequestMethod\.(?P<method>GET|POST|DELETE)
""",
    re.VERBOSE,
)
class MappingMethodPat(TypedDict):
    method: str

mapping_route_pat = re.compile(
    r"""
    \s*@RequestMapping[(].*value\s=\s"(?P<route>[^"]*)"
""",
    re.VERBOSE,
)
class MappingRoutePat(TypedDict):
    route: str

mapping_param_pat = re.compile(
    r"""
    \s*
    @RequestMapping[(]
        .* params
        \s=\s
        (?:
            [{]
            (?P<single>[^}]*)
            [}]
            |
            "(?P<multiple>[^"]*)"
        )
""",
    re.VERBOSE | re.DOTALL,
)
class MappingParramMatch(TypedDict):
    single: Optional[str]
    multiple: Optional[str]

roles_pat = re.compile(
    r"""
    @RolesAllowed[(](?P<single>\w+)[)]
    |@RolesAllowed[(][{](?P<multiple>.*)[}][)]
""",
    re.VERBOSE,
)
class RolesMatch(TypedDict):
    single: Optional[str]
    multiple: Optional[str]

statuses_pat = re.compile("HttpStatus.(?P<status>[A-Z_]*)")


class_q: Query = java_lang.query(r"""
(class_declaration
    (modifiers) @meta
)
""")


class ControllerMatch(TypedDict):
    meta: Node


handler_q = java_lang.query(r"""
(method_declaration
	(modifiers
        (annotation
            name: (identifier) @req_map
            (#eq? @req_map "RequestMapping"))
    ) @meta
	type: (_) @ret_ty
	name: (_) @fun
	parameters: (formal_parameters) @args
    body: (_) @body
) @method
""")


class HandlerMatch(TypedDict):
    method: Node
    fun: str
    ret_ty: str
    meta: Node
    args: Node


http_status_q = java_lang.query(r"""
(field_access
    object: (identifier) @obj
    field: (identifier) @status
    (#eq? @obj "HttpStatus")
)
""")


class StatusMatch(TypedDict):
    status: str


class Controller:
    def __init__(self, root_path: str, file_path: str):
        self.file_path = os.path.relpath(file_path, root_path)
        self.root_path = root_path
        content: bytes = b""
        with open(file_path, "rb") as f:
            content = f.read()

        tree: Tree = java_parser.parse(content)
        controller = u.query_patterns(ControllerMatch, class_q, tree.root_node)[0]
        base_route = mapping_route_pat.search(controller["meta"].text.decode())  # type: ignore[union-attr]
        if not base_route:
            print(f"{file_path} controller base route not found.", stderr)
            exit(1)
        self.base_route = base_route.group("route")

        self.handlers = [
            Handler(self, handler_match)
            for handler_match in u.query_patterns(
                HandlerMatch, handler_q, tree.root_node
            )
        ]

    def route_without_prefix(self: Self) -> str:
        return self.base_route.replace("/api/rest", "")

    def get_name(self) -> str:
        return os.path.basename(self.file_path)


class Qparam(TypedDict):
    name: str
    required: bool
    ty: str
    dval: Optional[str]


class Handler:
    controller: Controller
    range: Range
    method: str
    return_ty: str
    functionality: str
    roles: list[str]
    params: list[str]
    query_params: list[Qparam]
    path_vars: dict[str, str]

    def __init__(self, controller: Controller, match: HandlerMatch):
        self.controller = controller
        self.range = match["method"].range
        self.return_ty = match["ret_ty"]
        self.functionality = match["fun"]
        self.roles: list[str] = []
        self.statuses: list[str] = []
        self.params: list[str] = []
        self.parse_annot(match["meta"])
        self.parse_arguments(
            match["args"].text.decode().lstrip("(").rstrip(")").replace("\n", "")  # type: ignore[union-attr]
        )

    def parse_annot(self, meta: Node):
        meta_content = meta.text.decode()  # type: ignore[union-attr]
        ## Method
        if method := mapping_method_pat.search(meta_content):
            self.method = method.group("method")
        else:
            print(f"{self.functionality} handler doesn't have a method", stderr)
            exit(1)

        if roles := u.search(RolesMatch, roles_pat, meta_content):
            single = roles["single"]
            multiple = roles["multiple"]
            if single:
                self.roles.append(single)
            if multiple:
                self.roles.extend(multiple.replace(" ", "").split(","))

        if route := mapping_route_pat.search(meta_content):
            self.route = route.group("route")
        else:
            self.route = ""

        # Param
        if param := u.search(MappingParramMatch, mapping_param_pat, meta_content):
            if single := param["single"]:
                self.params = [single.strip("\" ")]
            elif multiple := param["multiple"]:
                self.params = [p.rstrip("\" ") for p in multiple.split(",")]

    def parse_arguments(self, arg_content: str):
        self.path_vars: dict[str, str] = {}
        pv_matches = u.iter(PathVarMatch, path_var_pat, arg_content)
        for pv_match in pv_matches:
            if var_name := pv_match["real_name"] or pv_match["var_name"]:
                self.path_vars[var_name] = pv_match["ty"]

        self.query_params = []
        rq_matches = req_param_pat.finditer(arg_content)
        for rq_match in rq_matches:
            qparam = rq_match.groupdict()

            qparam_param = qparam["param"]
            name = qparam["var_name"]
            req = "false"
            dval = None
            if qparam_param:
                if name_match := u.search(ReqParamNameMatch, req_param_name_pat, qparam_param):
                    name = name_match["named"] or name_match["unnamed"]
                if req_match := req_param_req_pat.search(qparam_param):
                    req = req_match.group(1)
                if dval_match := u.search(ReqParamDvalMatch, req_param_dval_pat, qparam_param):
                    dval = dval_match["dval"]

            self.query_params.append(
                Qparam(
                    {
                        "name": name,
                        "ty": qparam["ty"],
                        "required": req.lower() == "true",
                        "dval": dval,
                    }
                )
            )

    def get_location_link(self) -> str:
        start_line = self.range.start_point.row + 1
        end_line = self.range.end_point.row + 1
        return f"https://github.com/biblibre/NumaHOP-code/blob/master/{self.controller.file_path}#L{start_line}-L{end_line}"
