import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/logic/sign_in_logic.dart';
import 'package:gdsc_ueu_workshop/screen/login_screen/login_screen.dart';
import 'package:gdsc_ueu_workshop/widget/banner_widget.dart';
import 'package:gdsc_ueu_workshop/widget/catalogue_builder_widget.dart';
import 'package:gdsc_ueu_workshop/widget/category_widget.dart';
import 'package:gdsc_ueu_workshop/widget/search_widget.dart';

class Homescreen extends StatefulWidget {
  final User user;
  const Homescreen({Key? key, required this.user}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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

  bool _isTryingToSignOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.displayName ?? 'Errors'),
        actions: [
          ElevatedButton(
            child: _isTryingToSignOut
                ? const CircularProgressIndicator()
                : const Text('Logout With Google'),
            onPressed: () async {
              setState(() {
                _isTryingToSignOut = true;
              });

              await SignInUsecase.signOut(context: context);

              setState(() {
                _isTryingToSignOut = false;
              });

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
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
