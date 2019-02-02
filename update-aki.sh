git -C ./aki/src/ pull
docker-compose build --force-rm
docker-compose stop aki && docker-compose rm -f aki
docker-compose up -d aki
