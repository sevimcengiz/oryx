#!/bin/sh

set -e

git checkout gh-pages
mv book/* .
rmdir book
git add --all *
git commit -m "Update the book"
git push
git checkout main