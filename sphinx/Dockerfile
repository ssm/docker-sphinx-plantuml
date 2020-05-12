FROM stigsm/sphinx-plantuml-base:latest

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install \
        python3-sphinx \
        python3-sphinx-rtd-theme \
        python3-sphinxcontrib.plantuml \
        graphviz \
 && apt-get autoremove -y \
 && apt-get clean \
 && find /var/lib/apt/lists -mindepth 1 -delete
