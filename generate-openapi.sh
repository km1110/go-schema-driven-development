#!/bin/bash

java -jar openapi-generator-cli.jar generate \
  -i ./openapi/openapi.yaml \
  -g go \
  -o ./generated \
