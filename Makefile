.PHONY: base html tex

all: base html tex

latest: html
	docker tag stigsm/sphinx-plantuml:html stigsm/sphinx-plantuml:latest

push: latest
	docker push stigsm/sphinx-plantuml:base
	docker push stigsm/sphinx-plantuml:html
	docker push stigsm/sphinx-plantuml:latest
	docker push stigsm/sphinx-plantuml:tex

base:
	docker build -t stigsm/sphinx-plantuml:base base
html: base
	docker build -t stigsm/sphinx-plantuml:html html
tex: base
	docker build -t stigsm/sphinx-plantuml:tex tex
