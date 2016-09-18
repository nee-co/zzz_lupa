REVISION=`git rev-parse HEAD`

build:
	docker build --no-cache --tag lupa-application --build-arg REVISION=$(REVISION) .

dev-build:
	docker build --tag lupa-application --build-arg REVISION=$(REVISION) .
