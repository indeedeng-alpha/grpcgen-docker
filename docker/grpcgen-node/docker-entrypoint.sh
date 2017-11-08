#!/bin/sh
grpc_tools_node_protoc -I/src --js_out=import_style=commonjs,binary:/out --grpc_out=/out --plugin=protoc-gen-grpc=`which grpc_tools_node_protoc_plugin` "${@}"
