#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <lisp-file>"
    exit 1
fi

LISP_FILE="$1"

if [ ! -f "$LISP_FILE" ]; then
    echo "Error: File '$LISP_FILE' not found."
    exit 1
fi

# Get the directory where the script is located to find clrhack.asd
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run SBCL to perform the compilation
# --noinform: suppress banner and other noise
# --eval: execute the Lisp commands
sbcl --noinform --eval '(require :asdf)' \
     --eval "(push (truename \"$SCRIPT_DIR\") asdf:*central-registry*)" \
     --eval '(asdf:load-system :clrhack)' \
     --eval "(clrhack:compile-file \"$LISP_FILE\")" \
     --eval '(quit)'

# Identify the output DLL
FILENAME=$(basename -- "$LISP_FILE")
BASENAME="${FILENAME%.*}"
OUTPUT_DLL="bin/Release/net8.0/$BASENAME.dll"

if [ -f "$OUTPUT_DLL" ]; then
    echo "----------------------------------------------------"
    echo "Successfully compiled to $OUTPUT_DLL"
    echo "Run it with: dotnet $OUTPUT_DLL"
    echo "----------------------------------------------------"
else
    echo "Error: Compilation failed or output DLL not found at $OUTPUT_DLL"
    exit 1
fi
