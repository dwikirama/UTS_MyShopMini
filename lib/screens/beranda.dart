// File: lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:myshop_mini/widgets/kategori.dart';
import 'package:myshop_mini/models/models.dart';
import 'package:myshop_mini/screens/list_produk.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<CategoryModel> categories = [
    CategoryModel(
      name: 'Makanan',
      icon: Icons.restaurant,
      color: const Color(0xFFFF6B9D),
      lightColor: const Color(0xFFFFE5EF),
    ),
    CategoryModel(
      name: 'Minuman',
      icon: Icons.local_cafe,
      color: const Color(0xFF4DD0E1),
      lightColor: const Color(0xFFE0F7FA),
    ),
    CategoryModel(
      name: 'Elektronik',
      icon: Icons.computer,
      color: const Color(0xFF9C27B0),
      lightColor: const Color(0xFFF3E5F5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topRight,
            radius: 1.5,
            colors: [Color(0xFFB2EBF2), Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  // Header
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00BCD4),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF00BCD4).withOpacity(0.3),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MyShop Mini',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF263238),
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            'Belanja Mudah & Cepat',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF78909C),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  // Title
                  const Text(
                    'Pilih Kategori',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Jelajahi produk favorit Anda',
                    style: TextStyle(fontSize: 15, color: Color(0xFF78909C)),
                  ),
                  const SizedBox(height: 30),
                  // Categories
                  Expanded(
                    child: ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return TweenAnimationBuilder(
                          duration: Duration(milliseconds: 300 + (index * 100)),
                          tween: Tween<double>(begin: 0, end: 1),
                          builder: (context, double value, child) {
                            return Transform.translate(
                              offset: Offset(0, 50 * (1 - value)),
                              child: Opacity(opacity: value, child: child),
                            );
                          },
                          child: CategoryCard(
                            category: categories[index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductListScreen(
                                    categoryName: categories[index].name,
                                    categoryColor: categories[index].color,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
