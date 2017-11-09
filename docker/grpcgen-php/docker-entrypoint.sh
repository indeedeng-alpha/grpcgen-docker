#!/bin/sh
for proto in "$@"; do
    protoc --proto_path=. --php_out=/out --grpc_out=/out --plugin=protoc-gen-grpc=/grpc/bins/opt/grpc_php_plugin "$proto"
    #protoc-gen-php -i . -o /out "$@"
done
