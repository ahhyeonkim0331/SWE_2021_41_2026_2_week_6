#!/bin/bash

for file in files/*
do
    filename=$(basename "$file")
    first_char=${filename:0:1}
    first_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    mv "$file" "$first_char/"
done