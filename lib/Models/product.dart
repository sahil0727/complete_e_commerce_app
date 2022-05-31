import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

// our demo product

List<Product> demoProduct = [
  Product(
    id: 1,
    title: 'Wireless Controller for ps4',
    description: description,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    rating: 4.8,
    price: 64.99,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    title: 'Nike Sport White - Man Pant',
    description: description,
    images: ['assets/images/Image Popular Product 2.png'],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    rating: 4.2,
    price: 49.99,
    isPopular: true,
  ),
  Product(
    id: 3,
    title: 'Gloves XC Omega - Polygon',
    description: description,
    images: ['assets/images/glap.png'],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 36.55,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    title: 'Logitech Head head set',
    description: description,
    images: ['assets/images/wireless headset.png'],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 20.21,
    rating: 4.5,
    isFavourite: true,
  ),
];

const String description =
    'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …';
