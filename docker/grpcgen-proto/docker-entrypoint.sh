#!/bin/sh
for proto in "$@"; do
    protoc --proto_path=. --java_out=/out "$proto"
done
