#!/usr/bin/env bash
OUT=index.html
cd ./iiif && (
  cat ../.work/head.html > $OUT
  for f in *.json; do cat ../.work/template.tpl | sed -e "s/%manifest%/$f/g"; done >> $OUT
  cat ../.work/foot.html >> $OUT
)
echo "after a 'git commit' and 'git push', check https://brambg.github.io/static-file-server/iiif/"