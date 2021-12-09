FROM ubuntu:20.04
WORKDIR /app
RUN apt-get update \
  && apt-get install -y --no-install-recommends \ 
  libgssapi-krb5-2 \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*
COPY ./lib/ubuntu-x64 .
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
RUN ln -s /app/sq /usr/bin/sq