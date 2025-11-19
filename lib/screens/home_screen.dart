import 'package:flutter/material.dart';
import '../models/category.dart';
import 'product_list_screen.dart';
import '../app_colors.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Makanan', icon: Icons.fastfood),
    Category(name: 'Minuman', icon: Icons.local_drink),
    Category(name: 'Elektronik', icon: Icons.devices),
  ];

  // Fungsi untuk warna ikon berdasarkan kategori
  Color _getCategoryColor(String name) {
    switch (name) {
      case 'Makanan':
        return AppColors.foodCategory;
      case 'Minuman':
        return AppColors.drinkCategory;
      case 'Elektronik':
        return AppColors.electronicCategory;
      default:
        return AppColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop Mini', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.map((category) {
              return Expanded(
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.white,
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductListScreen(categoryName: category.name),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            category.icon,
                            size: 48,
                            color: _getCategoryColor(category.name),
                          ),
                          SizedBox(height: 8),
                          Text(
                            category.name,
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
