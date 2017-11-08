#!/usr/bin/env bash
python -m grpc_tools.protoc -I /src --python_out=/out --grpc_python_out=/out "$@"
