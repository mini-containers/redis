build: Dockerfile
	docker build -t mini-redis .

tag:
	docker tag mini-redis mini/redis
