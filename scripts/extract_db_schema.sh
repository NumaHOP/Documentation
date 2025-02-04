#!/usr/bin/env bash

mariadb-show -u${NH_DB_USER} $NH_DB_NAME\
    | sed -nre 's/^\| (.*)\s*\|$/\1/p' \
    | xargs -I{} sh -c "
        mariadb-show -unumahopadmin numahop {} % \
            | head --lines=-1 \
            | sed -r '2d;s/^.*Table: ([[:alpha:]_]+).*$/\n## \1\n/g;s/\+(-*)/|\1/g'
    "


