#!/bin/bash
# Build and package the static site into a 'package' folder
set -e

# 1. Build Tailwind CSS
npm run build

# 2. Prepare package directory
rm -rf package
mkdir -p package/dist
mkdir -p package/src/assets

# 3. Copy main files
cp index.html package/
cp -r dist/styles.css package/dist/
cp -r src/assets/* package/src/assets/

# 4. (Optional) Copy favicon or other static files if needed
# cp favicon.ico package/

# 5. Print result

echo "Packaged site in ./package. Structure:"
find package
