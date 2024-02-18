// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppy_shop_app/shared_data/text_styles.dart';

class SlideData {
  String title;
  String description;

  SlideData({required this.title, required this.description});
}

List<SlideData> slides = [
    SlideData(
      title: "Welcome to your journey to pawsome parenthood!", 
      description: "Embark on an exciting adventure to find your ideal canine companion! Explore our vast selection of adorable puppies."),

    SlideData(
      title: "New to puppies? Don't worry, we'll be your paws-itive guide!", 
      description: "Feeling overwhelmed by the thought of caring for a puppy? Relax! We understand the challenges and excitement new owners face."),

    SlideData(
      title: "Connect with responsible breeders and shelters directly in the app!", 
      description: "Finding a responsible breeder or shelter has never been easier! Our app conveniently connects you with ethical breeders."),
  ];

List<Widget> carouselItems = slides.map((slide) {
  return ClipRRect(
    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),

          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),              
              child: Text(
              slide.title,            
              style: TextStyles.titleStyle,
              textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: 30,),
        
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                slide.description,
                style: TextStyles.descriptionStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ],        
        ),
        ),
    );         
}).toList();
