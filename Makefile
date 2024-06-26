
IMAGE_BUILD_CMD ?= $(shell command -v docker 2>&1 >/dev/null && echo docker || echo podman)

works: ## Build docker image with the manager.
	$(IMAGE_BUILD_CMD) build -f works.Dockerfile .

does-not-work: ## Build docker image with the manager.
	$(IMAGE_BUILD_CMD) build -f does-not-work.Dockerfile .