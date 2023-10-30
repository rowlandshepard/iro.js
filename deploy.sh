#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'rowlandshepard.dev' > CNAME

git init
git add -A
git commit -m 'deploy rowlandshepard.dev'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:rowlandshepard/iro.js.git master:gh-pages

cd -