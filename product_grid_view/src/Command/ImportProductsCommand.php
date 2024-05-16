<?php

// src/Command/ImportProductsCommand.php

namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;

// the name of the command is what users type after "php bin/console"
#[AsCommand(
    name: 'app:import-products',
)]
class ImportProductsCommand extends Command {

    public function __construct(EntityManagerInterface $em, ProductRepository $pr) {
        $this->entityManager = $em;
        $this->productRepository = $pr;

        parent::__construct();
    }

    protected function configure(): void {
        $this
            ->setDescription('Import all products from JSON file to DDBB. The json file path is static.')
        ;
    }
    
    protected function execute(InputInterface $input, OutputInterface $output): int {
        
        $output->writeln("Starting process of import Products to DDBB");

        // Read static JSON file
        //$json_file_path = __DIR__ . '/../../../products.json';
        $json_file_path = __DIR__ . '/../../external_files/products.json';
        $json_file = file_get_contents($json_file_path);
        $json_data = json_decode($json_file);

        // Fetching data
        $products_list = $json_data->SearchResult->Items;
        $total_products = count($products_list);
        $output->writeln("Products to insert: {$total_products}");

        // Insert all products into DDBB
        foreach ($products_list as $row) {

            // Check if products exists by ASIN
            $check = $this->productRepository->checkProductExists($row->ASIN);
            if ($check) {
                $product = $this->entityManager->getRepository(Product::class)->findBy(['asin' => $row->ASIN])[0];
            } else {
                $product = new Product();
            }
            
            // Checking values
            $product->setName($row->ItemInfo->Title->DisplayValue);
            $product->setAsin($row->ASIN);
            $product->setMoreinfoUrl($row->DetailPageURL);
            $product->setImageUrl($row->Images->Primary->Large->URL);
            $product->setBrand($row->ItemInfo->ByLineInfo->Brand->DisplayValue);
            $product->setManufacturer($row->ItemInfo->ByLineInfo->Manufacturer->DisplayValue);
            $product->setFeatures($row->ItemInfo->Features->DisplayValues);
           
            // Convert prices to int
            $base_price = $row->Offers->Listings[0]->Price->Amount * 100;
            $product->setPrice($base_price);
            $discount_price = $row->Offers->Listings[0]->Price->Savings->Amount * 100;
            $discount_price = $base_price - $discount_price;
            $product->setPriceOffer($discount_price);

            // Get discount text
            $discount_text = $row->Offers->Listings[0]->Price->Savings->DisplayAmount;
            $discount_text = explode('(', $discount_text)[1];
            $discount_text = str_ireplace(')', '', $discount_text);
            $product->setPriceOfferText($discount_text);

            // Check free shipping
            $product->setFreeShipping($row->Offers->Listings[0]->DeliveryInfo->IsFreeShippingEligible);

            #"Save" product
            $this->entityManager->persist($product);

            #Save product into DDBB
            $this->entityManager->flush();

            $output->writeln("Product {$product->getId()} - {$product->getAsin()} successfully");
        }

        // ... put here the code to create the user

        // this method must return an integer number with the "exit status code"
        // of the command. You can also use these constants to make code more readable

        // return this if there was no problem running the command
        // (it's equivalent to returning int(0))
        return Command::SUCCESS;
        // return Command::FAILURE;
        // return Command::INVALID
    }
}