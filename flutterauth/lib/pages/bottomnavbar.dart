import 'package:flutter/material.dart';
import 'package:flutterauth/pages/HomePage.dart';

import 'home.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    WishlistScreen(),
    OrderScreen(),
    homePage(),
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(Icons.home, 'Home', 0),
              buildNavItem(Icons.favorite, 'Wishlist', 1),
              buildNavItem(Icons.shopping_cart, 'Orders', 2),
              buildNavItem(Icons.person, 'Profile', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    return Tooltip(
      message: label,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: _currentIndex == index ? Colors.purple :Colors.black,
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: _currentIndex == index ? Colors.purple : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderScreen'),
      ),
      body: Center(
        child: Text('Profile Screen', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WishlistScreen'),
      ),
      body: Center(
        child: Text('Profile Screen', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}