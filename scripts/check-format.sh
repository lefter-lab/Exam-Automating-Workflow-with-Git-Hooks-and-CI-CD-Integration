#!/bin/bash

echo "🔍 Checking Java formatting with Google Java Format..."

FILES=$(find . -type f -name "*.java")

if [ -z "$FILES" ]; then
  echo "ℹ️ No Java files found. Skipping format check."
  exit 0
fi

FAILED=0
for file in $FILES; do
  java -jar tools/google-java-format-1.17.0-all-deps.jar --dry-run --set-exit-if-changed "$file"
  if [ $? -ne 0 ]; then
    echo "❌ Format issue in $file"
    FAILED=1
  fi
done

if [ $FAILED -ne 0 ]; then
  echo "❌ Code format check failed. Please fix formatting."
  exit 1
else
  echo "✅ All Java files are properly formatted."
  exit 0
fi
