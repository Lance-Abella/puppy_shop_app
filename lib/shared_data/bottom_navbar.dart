// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../pages/cart_screen.dart';
import '../pages/catalog_screen.dart';
import '../pages/home_screen.dart';
import '../pages/profile_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Catalog(),
    Cart(),
    Profile(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        selectedItemColor: Color(0xff76453B),
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/home-g.jpg'),
                    height: 30,
                    width: 30,                    
                  ),
            label: "Home",
            
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/catalog-g.jpg'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Catalog",
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/cart-g.jpg'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Cart",
          ),

          BottomNavigationBarItem(
            icon: Image(
                    image: AssetImage('assets/profile-g.jpg'),
                    height: 30,
                    width: 30,                    
                  ),
            label: " Profile",
          ),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

        },
      ),
    );
  }
}