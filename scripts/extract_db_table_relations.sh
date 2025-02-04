#!/usr/bin/env bash

QUERY=$(cat <<SQL
SELECT CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
fROM KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME LIKE 'fk%'
AND REFERENCED_TABLE_SCHEMA LIKE 'numahop';
SQL
);

# Extract key relations from database.
echo "${QUERY}" \
    | mariadb information_schema \
    | sed -r 's/\s+/ | /g; s/^(.*)$/| \0 |/g; s/^\| fk_(\w*) \| (\w*) \| (\w*) \| (\w*) \| (\w*) \|$/| \1 | \2\.\3 | \4\.\5 |/g;'
