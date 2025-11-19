import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';
import '../app_colors.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;

  ProductListScreen({required this.categoryName});

  List<Product> getProducts() {
    // Data dummy produk berdasarkan kategori
    Map<String, List<Product>> productData = {
      'Makanan': [
        Product(
          name: 'Nasi Goreng',
          icon: Icons.rice_bowl,
          price: 'Rp 15.000',
          category: 'Makanan',
        ),
        Product(
          name: 'Sate',
          icon: Icons.kebab_dining,
          price: 'Rp 20.000',
          category: 'Makanan',
        ),
        Product(
          name: 'Ramen',
          icon: Icons.ramen_dining,
          price: 'Rp 50.000',
          category: 'Makanan',
        ),
      ],
      'Minuman': [
        Product(
          name: 'Es Teh',
          icon: Icons.local_cafe,
          price: 'Rp 5.000',
          category: 'Minuman',
        ),
        Product(
          name: 'Teh',
          icon: Icons.emoji_food_beverage,
          price: 'Rp 5.000',
          category: 'Minuman',
        ),
        Product(
          name: 'Kopi',
          icon: Icons.coffee,
          price: 'Rp 8.000',
          category: 'Minuman',
        ),
      ],
      'Elektronik': [
        Product(
          name: 'Laptop',
          icon: Icons.laptop,
          price: 'Rp 5.000.000',
          category: 'Elektronik',
        ),
        Product(
          name: 'Smartphone',
          icon: Icons.phone_android,
          price: 'Rp 3.000.000',
          category: 'Elektronik',
        ),
        Product(
          name: 'Headphone',
          icon: Icons.headphones,
          price: 'Rp 200.000',
          category: 'Elektronik',
        ),
        Product(
          name: 'Mouse',
          icon: Icons.mouse,
          price: 'Rp 50.000',
          category: 'Elektronik',
        ),
      ],
    };
    return productData[categoryName] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    List<Product> products = getProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName, style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: products[index]),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          products[index].icon,
                          size: 64,
                          color: AppColors.primary,
                        ),
                        SizedBox(height: 8),
                        Text(
                          products[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.text,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          products[index].price,
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
