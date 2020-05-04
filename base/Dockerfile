FROM debian:10

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install git make \
 && apt-get clean

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install python3-sphinx python3-sphinx-rtd-theme \
 && apt-get clean

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install python3-sphinxcontrib.plantuml \
 && apt-get clean
