#!/bin/bash

# Array of package names
packages=("brave-search" "google-maps" "aws-kb-retrieval-server" "memory" "puppeteer" "sequentialthinking")

# Loop through each package and run npm install and npm run build
for package in "${packages[@]}"; do
  echo "Processing $package"
  cd "src/$package" || exit
  npm install
  npm run build
  cd - || exit
done
