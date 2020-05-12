FROM stigsm/sphinx-plantuml-sphinx:latest

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install texlive texlive-latex-extra latexmk \
 && apt-get autoremove -y \
 && apt-get clean \
 && find /var/lib/apt/lists -mindepth 1 -delete

USER 1000
