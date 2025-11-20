// File: lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:myshop_mini/widgets/produk.dart';
import 'package:myshop_mini/models/models.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;
  final Color categoryColor;

  const ProductListScreen({
    super.key,
    required this.categoryName,
    required this.categoryColor,
  });

  List<ProductModel> _getProducts() {
    final productsMap = {
      'Makanan': [
        ProductModel(
          name: 'Pizza Mozarella',
          icon: Icons.local_pizza,
          price: 'Rp 45.000',
        ),
        ProductModel(
          name: 'Burger Jumbo',
          icon: Icons.lunch_dining,
          price: 'Rp 35.000',
        ),
        ProductModel(
          name: 'Sushi Set',
          icon: Icons.set_meal,
          price: 'Rp 75.000',
        ),
        ProductModel(
          name: 'Pasta Carbonara',
          icon: Icons.dinner_dining,
          price: 'Rp 40.000',
        ),
      ],
      'Minuman': [
        ProductModel(
          name: 'Coffe Latte',
          icon: Icons.coffee,
          price: 'Rp 28.000',
        ),
        ProductModel(
          name: 'Fresh Juice',
          icon: Icons.local_bar,
          price: 'Rp 20.000',
        ),
      ],
      'Elektronik': [
        ProductModel(
          name: 'Wireless Mouse',
          icon: Icons.mouse,
          price: 'Rp 150.000',
        ),
        ProductModel(
          name: 'Keyboard Mekanikal',
          icon: Icons.keyboard,
          price: 'Rp 450.000',
        ),
        ProductModel(
          name: 'Webcam HD',
          icon: Icons.videocam,
          price: 'Rp 350.000',
        ),
        ProductModel(
          name: 'Power Bank',
          icon: Icons.battery_charging_full,
          price: 'Rp 200.000',
        ),
      ],
    };
    return productsMap[categoryName] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final products = _getProducts();

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: categoryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Text(
              '${products.length} Produk Tersedia',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  categoryColor: categoryColor,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
