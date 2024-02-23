// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:puppy_shop_app/pages/catalog_screen.dart';
import 'package:puppy_shop_app/provider/cart_provider.dart';

import '../shared_data/object.dart';
import '../shared_data/text_styles.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyles.appbarStyle,
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,

        leading: GestureDetector(
           onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Catalog()));
            },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/backarrow-g.jpg'),
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),        
      ),


      body: 
      Stack(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.80,
                  child: ListView.builder(
                    itemCount: cartProvider.items.length,
                    itemBuilder: (context, index) {
                      Puppy pet = cartProvider.items[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(   
                  
                          title: Text(pet.name),   
                  
                  
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                            child: Image(
                              image: AssetImage(pet.image),
                              fit: BoxFit.contain,
                              )),
                  
                  
                          trailing: GestureDetector(
                            onTap: () {
                              cartProvider.remove(pet);
                              },
                            child: Icon(
                              Icons.clear, size: 18.0
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
          
                
                    
            ]),
          ),
        ),
        
        Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 250,              
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff76453B),
                  borderRadius: BorderRadius.circular(10.0)),
                child: 
                Text(
                  "Cart Total: ₱${cartProvider.getCartTotal()}",
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