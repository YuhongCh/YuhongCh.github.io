#!/bin/bash

# transform all md file in source to html
for md_file in source/*
do
    filename=$(basename $md_file .md)
    pandoc --standalone --fail-if-warning --template build/template.html $md_file -o "$filename.html"
done

# push to github
git add .
git commit -m "shell auto-submit"
git push origin main

# execute by run: ./push.sh 