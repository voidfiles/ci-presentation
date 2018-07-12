#! /bin/bash

rm -fR output/images
rm -fR output/reveal.js
mkdir -p output/images
cp images/* output/images/
cp -fR reveal.js output/reveal.js
# find ./graphs -name "*.dot" -print | cut -c 10- | cut -d . -f 1 | xargs -I@ bash -c "dot graphs/@.dot -Tpng -oimages/@.png"
cp custom.css output/

pandoc -t revealjs \
       -s presentation.md  \
       -o output/index.html \
       --from=markdown \
       --template=revealjs \
       --data-dir=./ \
       --standalone \
       -c custom.css \
       -V revealjs-url:/reveal.js/ \
       --variable theme="solarized"

pandoc --template=revealjs_print.revealjs \
       -s presentation.md  \
       -o output/print.html \
       --from=markdown \
       --data-dir=./ \
       --variable theme="solarized" \
       -V revealjs-url:/reveal.js/ \
       --standalone
