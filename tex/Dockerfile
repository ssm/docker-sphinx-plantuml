FROM stigsm/sphinx-plantuml:base

RUN apt-get -y update \
 && apt-get -y --no-install-recommends install texlive texlive-latex-extra latexmk \
 && apt-get clean

USER 1000
