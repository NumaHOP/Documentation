import os
import re
from argparse import ArgumentParser
from api.index import Api
from utils import find_files

# This file temporary. It is used because the API of NumaHOP is not compliant with
# the oas v3.1 REST specification.
#
# It scrapes the source code of NumaHOP using TreeSitter and some regexes to get the 
# information necessary to document the API.
# 
# It does not report on the usage of the API in the front-end yet.

def is_back_end_controller(file_path):
    file_name = os.path.basename(file_path)
    return (
        file_name.endswith("Controller.java")
        and file_name != "AbstractRestController.java"
    )


def does_file_contains_match(compiled_pattern: re.Pattern, file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        for line in file:
            if not compiled_pattern.search(line):
                return True
        return False


parser = ArgumentParser(
    prog='ApiScrapper',
    description='Scraps the spring annotations to document the api',
)
parser.add_argument('source', help="NumaHOP source path")
parser.add_argument('-o', '--output', help="Where to put the generated markdown")

args = parser.parse_args()
# NumaHOP source code root.
root_path = args.source
back_end_root = os.path.join(root_path, "src/main/java/fr/progilone/pgcn")

# user = Controller(root_path, file)

api = Api(root_path, find_files(is_back_end_controller, back_end_root, "java"))
api.index()
api.render_to_md("include/scraped-api.md")
print("Done")
