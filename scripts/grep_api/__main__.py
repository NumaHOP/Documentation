import os
import re
from sys import argv
from api.index import Api
from utils import find_files


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


if len(argv) != 2:
    print("Please provide only the root directory of the numahop source code.")
    exit(1)
# NumaHOP source code root.
root_path = argv[1]
back_end_root = os.path.join(root_path, "src/main/java/fr/progilone/pgcn")

# user = Controller(root_path, file)

api = Api(root_path, find_files(is_back_end_controller, back_end_root, "java"))
api.index()
api.render_to_md("include/scraped-api.md")
print("Done")
