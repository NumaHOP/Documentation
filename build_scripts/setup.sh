#!/usr/bin/env bash

# Create the build directory.
[ ! -d manuals/ ] && mkdir manuals/
cp landing.html manuals/index.html
cp common/theme/favicon.png  manuals/.
cp common/theme/css/variables.css manuals/.
