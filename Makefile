NAME = flanciskinho/tensorflow
VERSION = 2.0.3
P_VERSION=$(VERSION)-py3

.PHONY: build build-nocache tag-latest push push-latest release git-tag-version

build:
	docker build -t $(NAME):$(P_VERSION) --rm image

build-nocache:
	docker build -t $(NAME):$(P_VERSION) --no-cache --rm image

tag-latest:
	docker tag $(NAME):$(P_VERSION) $(NAME):latest

push:
	docker push $(NAME):$(P_VERSION)

push-latest:
	docker push $(NAME):latest

release: build tag-latest push push-latest

git-tag-version: release
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)


