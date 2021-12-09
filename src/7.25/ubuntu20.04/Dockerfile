FROM ubuntu:20.04

WORKDIR /app
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

RUN apt-get update \
  && apt-get install -y --no-install-recommends \ 
  libgssapi-krb5-2 \
  ca-certificates \
  wget \
  unzip \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Squidex/squidex-samples/releases/download/cli-v7.25/ubuntu-x64.zip \
  && unzip ubuntu-x64.zip -d /app \
  && rm ubuntu-x64.zip \
  && ln -s /app/sq /usr/bin/sq