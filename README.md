# PHPTL - SYMPHONY/DOCKER #

Parts of the project:
- Product_grid_view: symphony project with all tech features
- Docker: docker componentes to deploy de infra and web server
- Docs: many docs about future features, answers about Manage questions, and more


## BASIC COMMANDS ##

- Start project: symfony server:start --no-tls
- Create database: php bin/console doctrine:database:create
- Create entity/add more fields: php bin/console make:entity
- Export/apply changes into migrations: php bin/console make:migration
- Apply changes into DDBB: php bin/console doctrine:migrations:migrate
