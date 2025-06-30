from tree_sitter_language_pack import get_language, get_parser
import re

js_lang = get_language("javascript")
js_parser = get_parser("javascript")
resource_pat = re.compile(r"\$resource")
