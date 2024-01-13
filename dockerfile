FROM rust:slim-buster

RUN apt update \
    && apt install -y make libclang-dev clang \
        build-essential tcl protobuf-compiler file \
        libssl-dev pkg-config git tcl wget \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

ARG TAG="0.2.2"

WORKDIR /usr/src
RUN wget https://github.com/tursodatabase/libsql/archive/refs/tags/v$TAG.tar.gz
RUN tar -xvf v$TAG.tar.gz

WORKDIR /usr/src/libsql-$TAG

RUN ./configure --enable-wasm-runtime
RUN make -j8 sqlite3
ENV LD_LIBRARY_PATH=".libs ./sqlite3"

CMD ["./libsql"]