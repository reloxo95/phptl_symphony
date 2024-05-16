#!/bin/bash

cd /var/www/project
php bin/console app:import-products


symfony server:start --no-tls

