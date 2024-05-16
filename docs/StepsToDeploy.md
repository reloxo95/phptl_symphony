# StepsToDeploy


### STEPS ###
1. Execute docker up: `docker compose --env-file=./.mysql-phptl.env up`
2. Acces into docker container with `docker exec -it deployment-webserver-phptl-1 bash`
3. Build DDBB base data and config with `/root/build_db.sh`
4. Start webapp & import json products with `/root/start_webapp.sh`
5. Access to localhost:9999/products to see the product grid


### NOTES ###

There is a custom importer from JSON to DDBB. To test it, replace products.json into .product_grid_view/external_files and execute:
- `php bin/console app:import-products`
