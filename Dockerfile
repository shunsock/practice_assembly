FROM --platform=linux/amd64 ubuntu:24.04

RUN apt-get update && apt-get install -y \
    gcc \
    gdb \
    make \
    man-db \
    manpages \
    nasm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]

