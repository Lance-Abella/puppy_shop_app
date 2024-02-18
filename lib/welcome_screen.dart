// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/welcome1.jpg'),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CarouselSlider(
                  items: [1,2,3].map((i) {
                    return ClipRRect(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "hello",
                            style: TextStyle(fontSize: 40),
                            ),
                        ),
                        ),
                    );              
                  }).toList(),
          
                  options: CarouselOptions (
                    height: 330,
                    viewportFraction: 1.0,)
                  ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}