#Base Image
FROM ubuntu:18.04

#Install some commands.
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \
      fontconfig  \
      libharfbuzz-dev  \
      libx11-dev  \
      libxft-dev  \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

