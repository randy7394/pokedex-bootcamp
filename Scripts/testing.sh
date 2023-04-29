#!/bin/bash

echo "removing build folder"
rm -rf ./build*

echo "removing tempt files"
git clean -ffxd

xcodebuild test -project pokedex-bootcamp.xcodeproj \
-scheme pokedex-bootcamp \
-skip-testing:pokedex-bootcampUITests \
-destination 'platform=iOS Simulator,name=iPhone 14 Pro' \
-resultBundlePath ./build