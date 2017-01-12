#!/bin/sh
echo "releasing current version"
BASE_DIR=$(pwd)
VERSION_FILE="$BASE_DIR/src/main/resources/version"
CURRENT_VERSION=$(<$VERSION_FILE)
cd "$BASE_DIR/ReleaseAgent"
node release.js
cd $BASE_DIR
git add "$BASE_DIR/ReleaseAgent/."
git commit -m "Version $CURRENT_VERSION Release"
git push