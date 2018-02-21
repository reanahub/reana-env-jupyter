IMAGE=reanahub/reana-env-jupyter

all:
	@echo "Usage: make <action> where action is build, test, or push."

build: Dockerfile
	docker build -t $(IMAGE) .

test:
	docker run -i -t --rm $(IMAGE) jupyter nbconvert --version | grep -q ^5.3.1

push:
	docker push $(IMAGE)
