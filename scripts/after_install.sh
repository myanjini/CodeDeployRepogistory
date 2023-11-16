#!/bin/bash

cd /var/www/html
sudo mkdir build

echo ">>> install node modules"
npm install

echo ">>> build project"
npm run build

echo ">>> copy build results to web root directory"
mv ./build/* ./

echo ">>> remove template files & directories"
rm -rf build src scripts
