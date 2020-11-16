IMAGE=reanahub/reana-env-jupyter

all:
	@echo "Usage: make <action> where action is build, test, or push."

build: Dockerfile
	docker build -t $(IMAGE) .

test:
	docker run -i --rm $(IMAGE) jupyter --version | grep -q ^4.4.0

lint:
	docker run -i --rm hadolint/hadolint < Dockerfile

push:
	docker push $(IMAGE)
