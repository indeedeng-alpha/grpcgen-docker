#!/usr/bin/env bash

## Some current assumptions:
##
##  1.  All proto files are co-located in a single directory
##      - not hard to support, Indeed just doesn't have a need for it
##
##  2.  Your company properly manages the directory structure
##      - go requires projects to have a unique namespace per directory
##      - so if you're protos aren't in the proper, structure then the
##        generated directory structure will be flat

rm -rf build/

../grpcgen -l python -l node -l go -l php \
    --src proto/ \
    --out build/ \
    indeed/common/common.proto \
    indeed/health/health-service.proto \
    indeed/metrics/metrics-service.proto
