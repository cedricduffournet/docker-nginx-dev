docker_build:
	@docker build \
		--build-arg WORK_DIR=/var/www/dev/ \
		-t docker.io/dakodapp/nginx.dev .

docker_push:
	@docker push docker.io/dakodapp/nginx.dev

bp: docker_build docker_push