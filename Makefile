# Remove Previous Containers and Start new Containers in Detach Mode
rebuild:
	docker-compose down
	docker-compose --compatibility up --build
# Deploy rebuild production
deploy:
	make NODE_ENV=production rebuild
# To View Logs of all services
logs:
	docker-compose logs -f --tail="350" 

.PHONY: deploy logs rebuild