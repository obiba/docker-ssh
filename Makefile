#
# Docker helper
#

user=master
pwd=master
no_cache=false

# Build Docker image
build:
	sudo docker build --no-cache=$(no_cache) -t="obiba/ssh:snapshot" .

up:
	sudo docker-compose up -d

container-ip:
	sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' docker-ssh_server_1
