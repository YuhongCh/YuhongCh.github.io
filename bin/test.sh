#!/bin/bash

for md_file in source/*
do
    filename=$(basename $md_file .md)
    pandoc --standalone --fail-if-warning --template build/template.html $md_file -o "$filename.html"
done