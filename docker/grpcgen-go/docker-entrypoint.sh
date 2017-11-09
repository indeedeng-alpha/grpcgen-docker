#!/bin/sh
for proto in "$@"; do
    protoc --proto_path=. --go_out=plugins=grpc:/out --plugin=protoc-gen-grpc=`which protoc-gen-go` "$proto"
done
