#!/bin/sh
for proto in "$@"; do
    grpc_tools_node_protoc \
        -I/src \
        --js_out=import_style=commonjs,binary:/out \
        --grpc_out=/out \
        --ts_out="service=grpc-node:/out" \
        --plugin="protoc-gen-ts=$(which protoc-gen-ts)" \
        --plugin="protoc-gen-grpc=$(which grpc_tools_node_protoc_plugin)" \
        "$proto"
done
