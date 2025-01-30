#!/bin/bash

# Check for .txt files in the current directory
txt_files=$(ls *.txt 2>/dev/null)

# Check for .c files in the current directory
c_files=$(ls *.c 2>/dev/null)

# If no .txt files exist, create a dummy .txt file
if [ -z "$txt_files" ]; then
  echo "No .txt files found. Creating dummy file..."
  echo "This is a dummy .txt file." > dummy.txt
fi

# If no .c files exist, create a dummy .c file
if [ -z "$c_files" ]; then
  echo "No .c files found. Creating dummy file..."
  echo "// This is a dummy C file." > dummy.c
fi

# Display all .txt and .c files
echo "Listing all .txt files:"
ls *.txt

echo "Listing all .c files:"
ls *.c

