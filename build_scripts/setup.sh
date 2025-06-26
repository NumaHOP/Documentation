#!/usr/bin/env bash

[ ! -d book/ ] && mkdir book/
cp landing.html book/index.html
cp common/theme/favicon.png  book/.
cp common/theme/css/variables.css book/.
