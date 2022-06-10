#!/usr/bin/env sh

#docker build --rm -t kotlinlang-docs . -f ./webhelp/Dockerfile

# Compile kotlin reference
docker run --rm \
  -e HELP_PRODUCT_LOCATOR="kotlin-reference/kr" \
  -v "$(pwd)/.git":"/project/help/.git" \
  -v "$(pwd)/docs":"/project/help/docs" \
  -v "$(pwd)/kotlinx.coroutines":"/project/help/kotlinx.coroutines" \
  -v "$(pwd)/build":"/dist" \
    kotlinlang-docs "kotlin-reference" "kr"
