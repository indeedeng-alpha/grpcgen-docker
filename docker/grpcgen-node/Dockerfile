FROM indeed/grpcgen-proto:latest
WORKDIR /

ENV NODE_VERSION=6.5.0
ENV GRPC_VERSION=1.6.6

RUN apt-get update -y && \
    apt-get install -y curl git nano make

RUN curl -L http://git.io/n-install > n-install.sh && \
    N_PREFIX=${HOME}/n bash n-install.sh -y && \
    ln -s ${HOME}/n/bin/n /usr/bin/n

RUN n ${NODE_VERSION} && \
    n use ${NODE_VERSION}

RUN npm install -g grpc-tools@${GRPC_VERSION}

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /src /out

WORKDIR /src
ENTRYPOINT [ "/docker-entrypoint.sh" ]
