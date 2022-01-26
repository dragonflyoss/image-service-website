#!/bin/bash

set -ex

git checkout main
npm run generate
git checkout page
rm -rf image-service-website _nuxt css font images 200.html favicon.png index.html
cp -r dist/* .
