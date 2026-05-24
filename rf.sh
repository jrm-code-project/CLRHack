#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <lisp-file>"
    exit 1
fi

LISP_FILE="$1"

# 1. Compile the file using the existing cf.sh script
# Get the directory where this script is located to find cf.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -f "$SCRIPT_DIR/cf.sh" ]; then
    echo "Error: cf.sh not found in $SCRIPT_DIR. Please ensure cf.sh exists."
    exit 1
fi

"$SCRIPT_DIR/cf.sh" "$LISP_FILE"

# 2. Determine the output DLL path
FILENAME=$(basename -- "$LISP_FILE")
BASENAME="${FILENAME%.*}"
OUTPUT_DLL="bin/Release/net8.0/$BASENAME.dll"

# 3. Run the standalone executable
if [ -f "$OUTPUT_DLL" ]; then
    echo "--- Executing $OUTPUT_DLL ---"
    dotnet "$OUTPUT_DLL"
else
    echo "Error: Output DLL not found at $OUTPUT_DLL"
    exit 1
fi
