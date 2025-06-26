from typing import Self, Callable
from functools import total_ordering
from api.back_end import Controller, Handler, Qparam
import utils as u


class RouteSegment:
    """
    Utility class that make path segement compared by their names if they are not path parameters and if they are path parameters they are always considered equal.
    """
    name:str
    is_parameter: bool

    def __init__(self: Self, name: str, is_parameter: bool = False):
        self.name = name
        self.is_parameter = is_parameter

    # Either both
    def __eq__(self: Self, other):
        return isinstance(other, RouteSegment) and (
            (self.is_parameter and other.is_parameter) or (self.name == other.name)
        )

    # Pretty print the path segment eg surround with '{' and '}' for path segments
    def __repr__(self: Self):
        if self.is_parameter:
            return "\\{" + self.name + "\\}"
        else:
            return self.name

    # Ignore path segments in alphabetical sorting of the routes
    def alphaoredring(self: Self):
        return "" if self.is_parameter else self.name

    # Always return the same hash for path segments otherwise return hash of name.
    def __hash__(self) -> int:
        return 1 if self.is_parameter else hash(self.name)


@total_ordering
class RoutePath:
    """
    Utility class allowing to sort route paths alphabeticaly ignoring path parameters in the url with potentialy different names.
    RoutePath("/user/{id}") == RoutePath("/user/{identifier}") -> true
    RoutePath("/user/{id}") == RoutePath("/user/profile") -> false 
    """
    segments: list[RouteSegment]

    def __init__(self: Self, path: str):
        self.segments = []
        segments = path.split("/")
        for segment in segments:
            if segment.startswith("{"):
                self.segments.append(RouteSegment(segment[1:-1], True))
            else:
                self.segments.append(RouteSegment(segment))

    def __eq__(self: Self, other):
        return isinstance(other, RoutePath) and self.segments == other.segments

    def __lt__(self: Self, other):
        return "".join([s.alphaoredring() for s in self.segments]) < "".join(
            [s.alphaoredring() for s in other.segments]
        )

    def __repr__(self: Self) -> str:
        return "/".join([s.__repr__() for s in self.segments])

    def print_md_link(self: Self) -> str:
        # Mdbook removes all '/' '{' and '}' in headers id.
        return "".join([s.name for s in self.segments])

    def __hash__(self: Self) -> int:
        return sum([hash(s) for s in self.segments])

class Schema:
    name: str
    fields: dict[str, str]

    def __init__(self, type_name: str):
        self.name = type_name

    def __repr__(self):
        return self.name

class Route:
    def __init__(
        self: Self,
        path: RoutePath,
        method: str,
        implementation: Handler,
        param: list[str] = [],
        params: list[Qparam] = [],
        return_ty=None,
    ):
        self.path = path
        self.method = method
        self.param = param
        self.params = params
        self.implementation = implementation
        self.return_ty = return_ty

    def print_summary(self):
        if self.param:
            print(
                f"{self.implementation.functionality:<42} | {self.method:<6} | {self.path}?{','.join(self.param)}"
            )
        else:
            print(
                f"{self.implementation.functionality:<42} | {self.method:<6} | {self.path}"
            )

    def render_roles(self: Self) -> str:
        roles = "\n**Required Role\\(s\\):** "
        if len(self.implementation.roles) == 1:
            roles += f"{self.implementation.roles[0]}"
        elif len(self.implementation.roles) > 1:
            for role in self.implementation.roles:
                roles += f"\n- {role}"
        else:
            roles += "This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information."
        return roles

    def render_query_params(self: Self) -> str:
        params = self.implementation.query_params
        table_header = """
**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
"""
        if len(params) > 0:
            qparam_table = f"{table_header}"
            for qpar in params:
                req = "yes" if qpar['required'] == "True" else "no" 
                qparam_table += f"|{qpar['name']}|{qpar['ty']}|{req}|`{qpar['dval']}`|\n"
        else:
            qparam_table =""
        return qparam_table

    def render_request_body(self: Self) -> str:
        return "**Request Body:** TODO"


    def render_content(self: Self):
        title = f"<span api-method={self.method}>{self.method}</span> {self.path.__repr__()}"
        if self.param:
            title = f"<span api-method={self.method}>{self.method}</span> {self.path}?{','.join(self.param)}"

        return_ty = ""
        impl = f"**Implementation:** [{self.implementation.controller.get_name()}]({self.implementation.get_location_link()})"
        func = f"**Functionality:** {self.implementation.functionality}"
        roles = self.render_roles()
        qparam_table = self.render_query_params()
        request_body = self.render_request_body()


        if self.implementation.return_ty and self.implementation.return_ty != "void":
            return_ty = f"**Response Body:** {u.escape(self.implementation.return_ty)}"

        return f"""
### {title}
{impl}

{roles}

{func}

{request_body}

{qparam_table}

{return_ty}
"""


class RouteIndex:
    """
    Index the routes of the api by the path then their methods.
    Allows to quickly determine if some routes are clashing easily by
    cheking that.
    """

    def __init__(self) -> None:
        # Index of routes by path, then method, then list of routes defined
        self.routes: dict[RoutePath, dict[str, list[Route]]] = {}

    def is_clashing(self: Self, route: Route) -> bool:
        if methods := self.routes.get(route.path):
            if route_ojects := methods.get(route.method):
                return len(route_ojects) > 1
        return False

    def for_clashing(self: Self, f):
        for _, methods in sorted(self.routes.items()):
            for routes in methods.values():
                if len(routes) > 1:
                    for route in routes:
                        f(route)

    def for_non_clashing(self: Self, f: Callable):
        for _, methods in sorted(self.routes.items()):
            for routes in methods.values():
                if len(routes) <= 1:
                    for route in routes:
                        f(route)

    def for_groups(self: Self, f):
        for route, methods in sorted(self.routes.items()):
            f(route, methods)

    def for_clashing_groups(self: Self, f):
        for _, methods in sorted(self.routes.items()):
            for routes in methods.values():
                if len(routes) > 1:
                    f(routes)

    def get_errors(self: Self) -> list[Route]:
        errors = []
        for methods in self.routes.values():
            for routes in methods.values():
                if len(routes) <= 1:
                    continue
                routes_without_param = [r for r in routes if not r.param]
                if len(routes_without_param) > 1:
                    errors.extend(routes_without_param)
        return errors

    def register(self: Self, route: Route):
        self.routes.setdefault(route.path, {})
        self.routes[route.path].setdefault(route.method, [])
        self.routes[route.path][route.method].append(route)

    def index_controller(self: Self, controller: Controller) -> list[Route]:
        routes = []
        for handler in controller.handlers:
            route = Route(
                RoutePath(controller.route_without_prefix() + handler.route),
                handler.method,
                param=handler.params,
                params=handler.query_params,
                implementation=handler,
            )
            self.register(route)
            routes.append(route)
        return routes


class Api:
    def __init__(self, repo_root_path: str, back_end_files: list[str]):
        self.api_index = RouteIndex()
        self.routes: list[Route] = []
        self.controllers = [Controller(repo_root_path, file) for file in back_end_files]

    def index(self: Self):
        for controller in self.controllers:
            self.routes.extend(self.api_index.index_controller(controller))

    def render_to_md(self: Self, render_file: str):
        with open(render_file, "w") as f:
            print("> This documentation page is temporary. When the api will be compliant the the oas v3.1 specification this page will be removed.", file=f)
            print("# Api End Points", file=f)
            self.api_index.for_groups(
                lambda r, _: print(
                    f"* [{r}](#{r.print_md_link()})",
                    file=f,
                )
            )
            self.api_index.for_groups(lambda r, ms: render_group_to_md(f, r, ms))


def render_group_to_md(f, route_path: RoutePath, methods: dict[str, list[Route]]):
    print("---", file=f)
    print(f"# {route_path.__repr__()}", file=f)
    if any([len(r) > 1 for r in methods.values()]):
        print(
            """
> Doesn't respect oas v3.1.
""",
            file=f,
        )
    for _, routes in methods.items():
        for route_obj in routes:
            print(route_obj.render_content(), file=f)
