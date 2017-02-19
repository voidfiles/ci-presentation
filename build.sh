#! /bin/bash

mkdir -p images

# find ./graphs -name "*.dot" -print | cut -c 10- | cut -d . -f 1 | xargs -I@ bash -c "dot graphs/@.dot -Tpng -oimages/@.png"

pandoc -t revealjs \
       -s presentation.md  \
       -o index.html \
       --template=revealjs \
       --data-dir=./ \
       --standalone \
       -c custom.css \
       -V revealjs-url:https://cdn.rawgit.com/hakimel/reveal.js/master/ \
       --variable theme="solarized"
