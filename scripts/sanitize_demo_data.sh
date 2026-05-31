#!/usr/bin/env bash

find . -type f \
  ! -path "*/.git/*" \
  ! -path "*/build/*" \
  ! -path "*/.dart_tool/*" \
  -exec sed -i '' \
    -e 's/Arjun Rao/Arjun Rao/g' \
    -e 's/Lakshmi Rao/Lakshmi Rao/g' \
    -e 's/Rajesh Rao/Rajesh Rao/g' \
    -e 's/Priya Rao/Priya Rao/g' \
    -e 's/Ananya Rao/Ananya Rao/g' \
    -e 's/Rohan Rao/Rohan Rao/g' \
    -e 's/Vikram Rao/Vikram Rao/g' \
    -e 's/Meera Rao/Meera Rao/g' \
    -e 's/Suresh Rao/Suresh Rao/g' \
    -e 's/Demo Grandfather/Demo Grandfather/g' \
    -e 's/Demo Grandmother/Demo Grandmother/g' \
    -e 's/Demo Uncle 1/Demo Uncle 1/g' \
    -e 's/Demo Uncle 2/Demo Uncle 2/g' \
    -e 's/Demo Aunt/Demo Aunt/g' \
    -e 's/Demo Uncle 3/Demo Uncle 3/g' \
    {} \;

echo "Repository sanitization complete."

