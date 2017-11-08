FROM indeed/grpcgen-proto:latest

ENV PYTHON_VERSION=2.7
ENV GRPC_VERSION=1.7.0

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update -y && \
    apt-get install -y python${PYTHON_VERSION} python-setuptools python-dev build-essential

RUN easy_install pip

RUN pip install grpcio-tools==${GRPC_VERSION}

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /src /out

WORKDIR /src
ENTRYPOINT [ "/docker-entrypoint.sh" ]
