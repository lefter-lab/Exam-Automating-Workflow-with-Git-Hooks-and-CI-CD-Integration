#!/bin/bash

echo "🧼 Formatting all Java files..."

FILES=$(find . -type f -name "*.java")

for file in $FILES; do
  java -jar tools/google-java-format-1.17.0-all-deps.jar -i "$file"
done

echo "✅ Done formatting."
