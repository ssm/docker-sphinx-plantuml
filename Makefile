.PHONY: base html tex

base:
	docker build -t stigsm/sphinx-plantuml:base base
html:
	docker build -t stigsm/sphinx-plantuml:html html
tex:
	docker build -t stigsm/sphinx-plantuml:tex tex
