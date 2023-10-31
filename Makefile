IMAGE=docker.io/reanahub/reana-env-jupyter

all:
	@echo "Usage: make <action> where action is build, test, or push."

build: Dockerfile
	docker build -t $(IMAGE) .

test:
	docker run -i --rm $(IMAGE) jupyter --version | grep -q "jupyter core     : 4.7.1"

lint:
	docker run -i --rm docker.io/hadolint/hadolint:v2.12.0 < Dockerfile

push:
	docker push $(IMAGE)
