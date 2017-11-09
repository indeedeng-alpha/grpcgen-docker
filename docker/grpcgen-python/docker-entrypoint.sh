#!/usr/bin/env bash
for proto in "$@"; do
    python -m grpc_tools.protoc -I /src --python_out=/out --grpc_python_out=/out "$proto"
done
