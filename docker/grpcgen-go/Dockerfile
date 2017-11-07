FROM indeed/grpcgen-proto:latest

ENV GOLANG_VERSION=1.9
ENV GOPATH="${HOME}/go"
ENV PATH="${GOPATH}/bin:${PATH}"

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:gophers/archive && \
    apt update && \
    apt-get install -y git golang-${GOLANG_VERSION}-go && \
    cp /usr/lib/go-${GOLANG_VERSION}/bin/* /usr/bin/

RUN go get -u github.com/golang/protobuf/protoc-gen-go

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /src /out

WORKDIR /src
ENTRYPOINT [ "/docker-entrypoint.sh" ]
