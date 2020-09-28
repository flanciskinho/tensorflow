NAME = flanciskinho/tensorflow
VERSION = 1.14.0
VERSION_GPU = 1.14.0-gpu-py3
VERSION_CPU = 1.14.0-py3

.PHONY: build build-nocache tag-latest push push-latest release git-tag-version

build:
	docker build -t $(NAME):$(VERSION_GPU) --rm image-gpu
	docker build -t $(NAME):$(VERSION_CPU) --rm image-cpu

build-nocache:
	docker build -t $(NAME):$(VERSION_GPU) --no-cache --rm image-gpu
	docker build -t $(NAME):$(VERSION_CPU) --no-cache --rm image-cpu

tag-latest:
	docker tag $(NAME):$(VERSION_CPU) $(NAME):latest

push:
	docker push $(NAME):$(VERSION_GPU)
	docker push $(NAME):$(VERSION_CPU)

push-latest:
	docker push $(NAME):latest

release: build tag-latest push push-latest

git-tag-version: release
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)


