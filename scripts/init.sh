#!/bin/bash

echo "input parameter: $@"

# source directory of this script
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$SOURCE_DIR/setup_motion.sh

# shell - Process all arguments except the first one (in a bash script) - Stack Overflow
# https://stackoverflow.com/questions/9057387/process-all-arguments-except-the-first-one-in-a-bash-script
bash -c "${@:1}"