#!/bin/bash
cd /s_vue_1st

# copy external node modules
cp -a /ext/node_modules/* node_modules

# merge external package.json
package-json-merge ./package.json /ext/package.json > /tmp/package.json
cat /tmp/package.json > ./package.json

if [ "$1" = "bash" ]; then
  bash
else
  yarn ${@:1}
fi
