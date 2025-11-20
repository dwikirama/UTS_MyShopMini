// File: lib/models/models.dart
import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final Color color;
  final Color lightColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.color,
    required this.lightColor,
  });
}

class ProductModel {
  final String name;
  final IconData icon;
  final String price;

  ProductModel({required this.name, required this.icon, required this.price});
}
