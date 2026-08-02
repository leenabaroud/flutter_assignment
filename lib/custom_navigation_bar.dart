import 'package:flutter_assignment/home_screen.dart';
import 'package:flutter_assignment/categories_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      HomeScreen(
        onSeeAllCategories: () {
          _onItemTapped(1);
        },
      ),
      CategoriesScreen(),
      Placeholder(),
      Placeholder(),
      Placeholder(),
    ];
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows), label: ""),
            BottomNavigationBarItem(
                icon: Stack(children: [
                  Icon(Icons.shopping_cart, size: 30),
                  Positioned(
                      left: 15,
                      child: Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.amber,
                      ))
                ]),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: ""),
      BottomNavigationBarItem(
        icon: Image.asset(
          "images/profile.png",
          width: 24,
          height: 24,
          color: Color(0xFFB1B1B1),
        ),
        activeIcon: Image.asset(
          "images/profile.png",
          width: 24,
          height: 24,
          color: Color(0xFFE67F1E),
        ),
        label: "",
      ),
        ],
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFE67F1E),
      unselectedItemColor: Color(0xFFB1B1B1),
      onTap: _onItemTapped,
      iconSize: 30,
    ),
    );
  }
}
