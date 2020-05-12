.PHONY: all base sphinx html tex

SUFFIX = $(shell git describe)
APP    = sphinx-plantuml
ID     = stigsm

all: base sphinx html tex

push: base-push sphinx-push html-push tex-push

base: base-tag
sphinx: base sphinx-tag
html: sphinx html-tag
tex: sphinx tex-tag

%-build:
	@echo
	##############################
	## Building $(APP)-$*:candidate
	##
	docker build -t $(APP)-$*:candidate $*

%-tag: %-build
	@echo
	##############################
	## Tagging $(ID)/$(APP)-$*
	##
	docker tag $(APP)-$*:candidate $(ID)/$(APP)-$*:${SUFFIX}
	docker tag $(APP)-$*:candidate $(ID)/$(APP)-$*:latest
	docker rmi $(APP)-$*:candidate

%-push: %-tag
	@echo
	##############################
	## pushing $(ID)/$(APP)-$*
	##
	docker push $(ID)/$(APP)-$*:${SUFFIX}
	docker push $(ID)/$(APP)-$*:latest
