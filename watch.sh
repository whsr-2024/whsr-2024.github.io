#!/bin/bash

php -S localhost:8080 -t . &

while [ true ]
do
    inotifywait pages/*.md --recursive
    make pages
done
