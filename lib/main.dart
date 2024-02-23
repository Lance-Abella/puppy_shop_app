// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puppy_shop_app/pages/welcome_screen.dart';
import 'package:puppy_shop_app/provider/cart_provider.dart';

import 'provider/catalog_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider()
        ),

        ChangeNotifierProvider(
          create: (context) => CatalogProvider()  
        ),
      ],
      child: const MyApp()
      ), 
    );    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}