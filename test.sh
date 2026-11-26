#!/bin/bash

# Run the program and save output
./program > output.txt

# Check if the output contains the expected string
if grep -q "Hello, World!" output.txt; then
    echo "Test Passed: Output matched expected text."
    exit 0
else
    echo "Test Failed: Output did not match."
    echo "Actual output was:"
    cat output.txt
    exit 1
fi
