// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppy_shop_app/shared_data/object.dart';

class PuppyDetails extends StatelessWidget {
  final Puppy pet;
  const PuppyDetails({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 241),
      body: Stack(
        children: [
          Image(
            image: AssetImage(pet.image),
            width: 400,
            height: 338,
            fit: BoxFit.contain,
            ),

          Center(
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),              
              height: 100,
              width: 320,
              margin: EdgeInsets.only(bottom: 90),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pet.name,                      
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              
                    SizedBox(height: 10),

                    Text(
                      pet.origin,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                   
                  ],
                ),
              )
            ),
          ),

           Center(
             child: Container(
              margin: EdgeInsets.only(bottom: 85, left: 220),
              decoration: BoxDecoration(
                color: Color(0xff76453B),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 50,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "assets/minimize.png",                  
                    ),
                    width: 25,
                    height: 25,
                    fit: BoxFit.contain,
                    ),
              ),
                     ),
           ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 70, right: 280),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/foot.png"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                  ),
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 75, right: 170),
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,            
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 209, 199),
                borderRadius: BorderRadius.circular(10)
              ),
              
              margin: EdgeInsets.only(top: 220, right: 220),
              width: 100,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Weight",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,            
                    ),
                  ),

                  SizedBox(height: 5,),
                  
                  Text(
                    "${pet.weight.toString()} kg",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500, 
                      color: Color(0xff76453B),           
                    ),
                  )
                ],
              ),
            ),
          ),

          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 209, 199),
                borderRadius: BorderRadius.circular(10)
              ),
              
              margin: EdgeInsets.only(top: 220, ),
              width: 100,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,            
                    ),
                  ),

                  SizedBox(height: 5,),
                  
                  Text(
                    "${pet.height.toString()} cm",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500, 
                      color: Color(0xff76453B),           
                    ),
                  )
                ],
              ),
            ),
          ),

          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 209, 199),
                borderRadius: BorderRadius.circular(10)
              ),
              
              margin: EdgeInsets.only(top: 220, left: 220),
              width: 100,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Color",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,            
                    ),
                  ),

                  SizedBox(height: 5,),
                  
                  Text(
                    pet.color,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500, 
                      color: Color(0xff76453B),           
                    ),
                  ),

                  
                ],
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 450),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  pet.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400, 
                    color: Colors.black,           
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}