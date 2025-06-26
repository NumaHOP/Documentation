from typing import TypedDict, TypeVar, Type, cast, Match, Pattern, Iterator, AnyStr, Optional, get_origin, get_args, Union, Callable
from tree_sitter import Query, Node

import os

class AnyTypedDict(TypedDict):
    pass
TD = TypeVar("TD", bound=AnyTypedDict)

"""
 File finding utils
"""
def class_in(class_list: list[str]) -> Callable[[str], bool]:
    return lambda f: os.path.basename(f).split('.')[0] in class_list

def find_files(include_predicate: Callable[[str], bool], root_path: str=".", file_extension: str=".java") -> list[str] :
    """
    Search for files containing a regex pattern under a root path,
    filtered by file extension. If the regex has capture groups, those will be includei
    in the results, along with the line number. Uses Python's re module.

    Args:
        inclusion predicate (str)->bool: File path in input.
        root_path (str): Directory to start the search in.
        file_extension (str): Only search files with this extension.

    Returns:
        List[MatchResult]: A list of MatchResult objects containing the relative file path,
                            captured groups, and line number for each match.
    """
    files_found = []

    for dirpath, _, filenames in os.walk(root_path):
        for filename in filenames:
            if not filename.endswith(file_extension):
                continue
            file_path = os.path.join(dirpath, filename)
            if include_predicate(file_path):
                files_found.append(file_path)

    return files_found

"""
Markdown rendering utils.
"""
def escape(content: str):
    return content.replace("<", "&lt;").replace(">", "&gt;")

"""
TreeSitter utils.
"""
type PatternIndex = int
type CaptureName = str
type Captures = list[Node]
type PatternMatch = dict[CaptureName, Captures]
type QueryMatch = tuple[PatternIndex, PatternMatch]
type QueryMatches = list[QueryMatch]

type SimplePatternMatch = dict[CaptureName, Node]

def query_patterns(dictcls: Type[TD], query: Query, node: Node) -> list[TD]:
    """
    Simplify the query result to only keep maches as all our queries
    only contains one pattern.
    """

    def get_pattern_match(qmatch: QueryMatch) -> TD:
        dict_keys = dictcls.__annotations__.keys()
        _, pmatch = qmatch
        new_pmatch = dictcls()
        for capt_name in dict_keys:
            if capt_name not in pmatch:
                continue
            if (
                len(pmatch[capt_name]) != 1
                and dictcls.__annotations__[capt_name] is list
            ):
                new_pmatch.__setitem__(capt_name, pmatch[capt_name])
            elif dictcls.__annotations__[capt_name] is str:
                new_pmatch.__setitem__(capt_name, pmatch[capt_name][0].text.decode())  # type: ignore[union-attr]
            elif dictcls.__annotations__[capt_name] is Node:
                new_pmatch.__setitem__(capt_name, pmatch[capt_name][0])
        return cast(TD, new_pmatch)

    assert query.pattern_count == 1
    qmatches: QueryMatches = query.matches(node)
    return list(map(get_pattern_match, qmatches))

"""
Regex utils.
"""
def is_optional(tp) -> bool:
    return get_origin(tp) is Union and type(None) in get_args(tp) 

def map_match(dictcls: Type[TD], match: Match) -> Optional[TD]:
    dict_keys = dictcls.__annotations__.keys()
    groups = match.groupdict()
    maped: dict = {}
    for key in dict_keys:
        if key not in groups:
            if is_optional(dictcls.__annotations__[key]):
                maped[key] = None
            else:
                return None
        else:
            maped[key] = groups[key]
    return cast(TD, maped)

def iter(dictcls: Type[TD], pat: Pattern, input: AnyStr) -> Iterator[TD]:
    matches = pat.finditer(input)
    return filter(None, map(lambda m: map_match(dictcls, m), matches))

def search(dictcls: Type[TD], pat: Pattern, input: AnyStr) -> Optional[TD]:
    if match := pat.search(input):
        return map_match(dictcls, match)
    else:
        return None
