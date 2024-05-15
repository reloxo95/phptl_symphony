<?php

namespace App\Repository;

use App\Entity\Product;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Product>
 */
class ProductRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Product::class);
    }


    public function checkProductExists($aisn): bool {
        $result = $this->createQueryBuilder('p')
            ->andWhere('p.asin = :val')
            ->setParameter('val', $aisn)
            ->getQuery()
            ->getOneOrNullResult();

        if (is_null($result)) {
            return FALSE;
        }
        return TRUE;
    }


}
