FROM ubuntu:16.04
WORKDIR /

ENV PROTOC_VERSION=3.2.0
ENV LINUX_PATTERN=protoc-${PROTOC_VERSION}-linux-x86_64

RUN apt-get update && apt-get install -y unzip wget

RUN wget https://github.com/google/protobuf/releases/download/v${PROTOC_VERSION}/${LINUX_PATTERN}.zip && \
    unzip ${LINUX_PATTERN}.zip -d ${LINUX_PATTERN} && \
    chmod 755 ${LINUX_PATTERN}/bin/*

RUN mv ${LINUX_PATTERN}/bin/* /usr/bin/ && \
    mv ${LINUX_PATTERN}/include/* /usr/include/

RUN rm -rf ${LINUX_PATTERN} && \
    rm -rf *zip*

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /src /out

WORKDIR /src
ENTRYPOINT [ "/docker-entrypoint.sh" ]
