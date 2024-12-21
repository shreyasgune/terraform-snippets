#!/bin/bash

# Generate documentation for the root module
terraform-docs markdown . > README.md

# Generate documentation for each module
for dir in *; do
    if [ -d "$dir" ]; then
        module_name=$(basename "$dir")
        echo "## $module_name" >> README.md
        terraform-docs markdown "$dir" >> README.md
    fi
done
