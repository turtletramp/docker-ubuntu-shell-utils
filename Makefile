UBUNTU := bionic
VCS_REF := $(shell git rev-parse --short HEAD)
BUILD_DATE := $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")

# If you need to change anything below, please raise an issue:
TAG := ubuntu-shell-utils:$(UBUNTU)-2

.PHONY: image

image: $(QTF)
	docker build --build-arg "VCS_REF=$(VCS_REF)" --build-arg "BUILD_DATE=$(BUILD_DATE)" --tag "$(TAG)" .
