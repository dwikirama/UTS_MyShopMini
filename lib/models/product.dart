import 'package:flutter/material.dart';

class Product {
  final String name;
  final IconData icon;
  final String price;
  final String category;

  Product({
    required this.name,
    required this.icon,
    required this.price,
    required this.category,
  });
}
