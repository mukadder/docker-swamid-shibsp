VERSION=latest
NAME=swamid-shibsp

all: build push
build:
	docker build --no-cache=true -t $(NAME):$(VERSION) .
	docker tag -f $(NAME):$(VERSION) docker.sunet.se/$(NAME):$(VERSION)
update:
	docker build -t $(NAME):$(VERSION) .
	docker tag -f $(NAME):$(VERSION) docker.sunet.se/$(NAME):$(VERSION)
push:
	docker push docker.sunet.se/$(NAME):$(VERSION)
