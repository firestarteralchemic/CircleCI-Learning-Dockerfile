FROM ubuntu:focal
LABEL maintainer="Firestarter" \
      description="GCC and junk for building with CircleCI :V" \
      version="0.1"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install -y --no-install-recommends\
                    git \
                    curl \
                    gcc \
                    g++ \
                    build-essential \
                    unzip \
                    tar \
                    ca-certificates && \
    apt autoclean && \
    apt autoremove && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
