default: all

proto:
	docker build -t indeed/grpcgen-proto docker/grpcgen-proto

# language specific targets

go: proto
	docker build -t indeed/grpcgen-go docker/grpcgen-go

node: proto
	docker build -t indeed/grpcgen-node docker/grpcgen-node

python: proto
	docker build -t indeed/grpcgen-python docker/grpcgen-python

# macros

all: proto go node python
