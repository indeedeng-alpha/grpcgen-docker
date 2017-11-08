FROM indeed/grpcgen-proto:latest
WORKDIR /

ENV PHP_VERSION=7.0
ENV GRPC_VERSION=1.6.0

RUN apt-get update -y && \
    apt-get install -y rake curl git php${PHP_VERSION} php${PHP_VERSION}-dev php-pear zlib1g-dev

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN git clone --depth=1 https://github.com/grpc/grpc.git && \
    cd grpc && \
    git submodule update --init && \
    make grpc_php_plugin

#RUN apt-get install -y ruby-all-dev && \
#    gem install ronn
#
#RUN git clone https://github.com/stanley-cheung/Protobuf-PHP --depth=1 && \
#    cd Protobuf-PHP && \
#    rake pear:package version=1.0 && \
#    pear install Protobuf-1.0.tgz

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /src /out

WORKDIR /src
ENTRYPOINT [ "/docker-entrypoint.sh" ]
