// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:puppy_shop_app/shared_data/text_styles.dart';
import 'shared_data/page_indicator.dart';
import 'shared_data/slide_data.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentPage = 0;
  final int _itemCount = slides.length;

  @override
  Widget build(BuildContext context) {

    CircleAvatarIndicator _circleAvatarIndicator = CircleAvatarIndicator (
    currentPage: _currentPage,
    itemCount: _itemCount,
    );
    
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
                _circleAvatarIndicator,
                
                CarouselSlider(
                  items: carouselItems,          
                  options: CarouselOptions (
                    height: 330,
                    viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });                    
                  },
                  )
                  ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,  
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 250,              
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10.0)),
              child: 
              Text(
                "Get Started",
                style: TextStyles.button1Style,
                textAlign: TextAlign.center,
              )
            ),
          ),


          
        ]
      ),
    );
  }
}



