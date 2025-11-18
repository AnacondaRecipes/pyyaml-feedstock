#!/bin/bash

set -x

cd ${SRC_DIR}

$PYTHON -m pip install . --no-deps --no-build-isolation \
        --config-settings="--global-option=--with-libyaml" \
        --config-settings="--global-option=build_ext" \
        --config-settings="--global-option=-I${PREFIX}/include" \
        --config-settings="--global-option=-L${PREFIX}/lib"
