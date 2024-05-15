<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

use App\Entity\Product;
use App\Repository\ProductRepository;

class ProductController extends AbstractController {

    /**
     * Render products as grid
     * $productRepository
     */
    #[Route('/products', name: 'product-list')]
    public function displayGrid(ProductRepository $productRepository): Response {

        $products = $productRepository->findAll();
        return $this->render('product/product-grid.html.twig', [
            'products' => $products,
        ]);
    }


}
