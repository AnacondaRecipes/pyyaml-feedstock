@echo on

%PYTHON% -m pip install . --no-deps --no-build-isolation ^
        --config-settings="--global-option=--with-libyaml" ^
        --config-settings="--global-option=build_ext" ^
        --config-settings="--global-option=-I%LIBRARY_INC%" ^
        --config-settings="--global-option=-L%LIBRARY_LIB%"
