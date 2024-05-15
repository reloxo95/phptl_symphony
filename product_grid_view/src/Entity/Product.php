<?php

namespace App\Entity;

use App\Repository\ProductRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProductRepository::class)]
class Product
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    private ?string $asin = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $moreinfo_url = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $image_url = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $brand = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $manufacturer = null;

    #[ORM\Column(type: Types::ARRAY, nullable: true)]
    private ?array $features = null;

    #[ORM\Column]
    private ?int $price = null;

    #[ORM\Column(nullable: true)]
    private ?int $price_offer = null;

    #[ORM\Column(nullable: true)]
    private ?bool $free_shipping = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $price_offer_text = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAsin(): ?string
    {
        return $this->asin;
    }

    public function setAsin(string $asin): static
    {
        $this->asin = $asin;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getMoreinfoUrl(): ?string
    {
        return $this->moreinfo_url;
    }

    public function setMoreinfoUrl(?string $moreinfo_url): static
    {
        $this->moreinfo_url = $moreinfo_url;

        return $this;
    }

    public function getImageUrl(): ?string
    {
        return $this->image_url;
    }

    public function setImageUrl(?string $image_url): static
    {
        $this->image_url = $image_url;

        return $this;
    }

    public function getBrand(): ?string
    {
        return $this->brand;
    }

    public function setBrand(?string $brand): static
    {
        $this->brand = $brand;

        return $this;
    }

    public function getManufacturer(): ?string
    {
        return $this->manufacturer;
    }

    public function setManufacturer(?string $manufacturer): static
    {
        $this->manufacturer = $manufacturer;

        return $this;
    }

    public function getFeatures(): ?array
    {
        return $this->features;
    }

    public function setFeatures(?array $features): static
    {
        $this->features = $features;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getPriceOffer(): ?int
    {
        return $this->price_offer;
    }

    public function setPriceOffer(?int $price_offer): static
    {
        $this->price_offer = $price_offer;

        return $this;
    }

    public function isFreeShipping(): ?bool
    {
        return $this->free_shipping;
    }

    public function setFreeShipping(?bool $free_shipping): static
    {
        $this->free_shipping = $free_shipping;

        return $this;
    }

    public function getPriceOfferText(): ?string
    {
        return $this->price_offer_text;
    }

    public function setPriceOfferText(?string $price_offer_text): static
    {
        $this->price_offer_text = $price_offer_text;

        return $this;
    }
}
