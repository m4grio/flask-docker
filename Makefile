#! /usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}
DOCKER_REPOSITORY_NAME=flaskdocker_flask
EXEC_FILES=\
	bin/flask

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	docker-compose build
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin

uninstall:
	docker inspect --type=image $(DOCKER_REPOSITORY_NAME) &> /dev/null && docker rmi $(DOCKER_REPOSITORY_NAME) || true
	test -d $(prefix)/bin && \
	(cd $(prefix) && rm -f $(EXEC_FILES))
