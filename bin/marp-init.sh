#!/bin/sh

# This script is used to initialize the work directory for the Marp project.

# Get the path of the script
script_dirpath="$(cd "$(dirname "$0")" && pwd -P)"
# Get the path of the assets and templates directories
assets_dirpath="${script_dirpath}/../assets"
templates_dirpath="${script_dirpath}/../templates"

current_dirpath="$(pwd -P)"

# Check if the target directory is specified.
# If not, use the current directory, otherwise use the specified directory.
if [ -n "$1" ]; then
    target_dirpath="${current_dirpath}/$1"
else
    target_dirpath="${current_dirpath}"
fi
if [ ! -d ${target_dirpath} ]; then
    echo "creating work directory: ${target_dirpath}"
    mkdir -p ${target_dirpath}
fi

# copy the assets and templates to the work directory
if [ ! -e "${target_dirpath}/assets" ]; then
    echo "copying assets to work directory"
    cp -r $assets_dirpath $target_dirpath/assets
fi
if [ ! -e "${target_dirpath}/docs" ]; then
    echo "copying templates to work directory"
    cp -r $templates_dirpath $target_dirpath/docs
fi
