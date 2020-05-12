FROM debian:bullseye

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install git make \
 && apt-get autoremove -y \
 && apt-get clean \
 && find /var/lib/apt/lists -mindepth 1 -delete
