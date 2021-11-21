import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/widget/banner_widget.dart';
import 'package:gdsc_ueu_workshop/widget/catalogue_builder_widget.dart';
import 'package:gdsc_ueu_workshop/widget/category_widget.dart';
import 'package:gdsc_ueu_workshop/widget/search_widget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  final List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.grey), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.explore, color: Colors.grey), label: 'Explore'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart, color: Colors.grey), label: 'Cart'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.notifications, color: Colors.grey),
        label: 'Notifications'),
    const BottomNavigationBarItem(icon: CircleAvatar(), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                SearchWidget(),
                SizedBox(height: 40),
                BannerWidget(),
                SizedBox(height: 24),
                CategoryWidget(),
                SizedBox(height: 24),
                CatalogueeBuilderWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
