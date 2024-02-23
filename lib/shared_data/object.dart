import 'package:flutter/material.dart';

class Puppy {
  final String image;
  final String name;
  final double price;
  final String origin;
  final double weight;
  final double height;
  final String color;
  final String description;

  Puppy({required this.image, required this.name, required this.price, required this.origin, required this.weight, required this.height, required this.color, required this.description});
}

final List<Puppy> pets = [
  Puppy(
    image: "assets/corgi.png", 
    name: "Corgi", 
    price: 10000.0, 
    origin: "United Kingdom", 
    weight: 3.5, 
    height: 20.0, 
    color: "Brown/white", 
    description: "Corgis are small, fox-faced dogs with a sturdy build, a doubled coat in various colors."
    ),

  Puppy(
    image: "assets/doberman.png", 
    name: "Doberman", 
    price: 20000.0, 
    origin: "Germany", 
    weight: 5.0, 
    height: 40.0, 
    color: "Brown/black", 
    description: "Doberman is a medium to large-sized breed known for its sleek, muscular build, and cropped ears."
    ),

  Puppy(
    image: "assets/german.png", 
    name: "German Sheperd", 
    price: 15000.0, 
    origin: "Germany", 
    weight: 6.1, 
    height: 43.0, 
    color: "Brown/black", 
    description: "German Sheperd is a large, agile dog breed with a strong, muscular build, known for its intelligent, confident and loyal nature."
    ),

  Puppy(
    image: "assets/golden.png", 
    name: "Golden Retriever", 
    price: 12000.0, 
    origin: "Scotland", 
    weight: 4.6, 
    height: 30.8, 
    color: "Light brown", 
    description: "Golden Retriever is a sunshine-furred charmers with boundless energy and hearts of gold."
    ),

  Puppy(
    image: "assets/husky.png", 
    name: "Husky", 
    price: 13500.0, 
    origin: "Siberia", 
    weight: 7.3, 
    height: 52.5, 
    color: "White", 
    description: "A Siberian Husky is a medium-sized working dog with a thick double coat, often in striking combinations of black, white, gray, and red."
    ),

  Puppy(
    image: "assets/pug.png", 
    name: "Pug", 
    price: 10000.0, 
    origin: "China", 
    weight: 3.1, 
    height: 29.5, 
    color: "Black/white", 
    description: "Pug is a wrinkly charmers with playful spirit, they pack a lot of love in a compact, snorting, bat-eared package."
    ),
];

