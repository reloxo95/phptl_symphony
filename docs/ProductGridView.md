# Product Grid View #

Basic web project to display products from DDBB into a grid view


## Data origin - command to import data ##
The data displayed came from a JSON file imported into DDBB.
There is a custom command to import all data from JSON to DDBB. To execute the command type: 
- `php bin/console app:import-products`

<b>The path of JSON file is static (for development purpose). See 'product_grid_view/src/Command/ImportProductsCommand.php' to more info</b>

## Routes ##

- <b>/ (default)</b>: base route with Symphony main data.
- <b>/products (grid)</b>: custom route to display all products

