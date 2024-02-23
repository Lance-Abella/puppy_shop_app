// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:puppy_shop_app/pages/puppy_details.dart';
import 'package:puppy_shop_app/provider/cart_provider.dart';
import 'package:puppy_shop_app/provider/catalog_provider.dart';
import 'package:puppy_shop_app/shared_data/object.dart';
import 'package:puppy_shop_app/shared_data/text_styles.dart';

import '../shared_data/clear_button.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  TextEditingController searchKeyword = TextEditingController();

  @override
  void initState() {
    super.initState();    
  }

  void clearSearchBar() {
    searchKeyword.clear();
    Provider.of<CatalogProvider>(context, listen: false).updateResults("");
  } 

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final catalogProvider = Provider.of<CatalogProvider>(context);

    searchKeyword.addListener(() {
      catalogProvider.updateResults(searchKeyword.text);
    });

    List<Puppy> puppy = catalogProvider.results;
    

    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Store",
          style: TextStyles.appbarStyle,
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Container(
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
        actions: [
          Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          child: Image(
            image: AssetImage('assets/3-dots.jpg'),
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0,
                  )
                ]
              ),
        
              //Search Bar
              child: TextField(
                controller: searchKeyword,
                onChanged: (text){
                  if(text.isEmpty){
                    clearSearchBar();
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Search a puppy",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
        
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image(
                      image: AssetImage('assets/search-icon.png'),
                      width: 10,
                      height: 10,
                      fit: BoxFit.contain,                    
                    ),
                  ),
        
                  suffixIcon: Container(
                    width: 100,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [  
                                                  
                          ClearButton(onTap: () => clearSearchBar()),
                                                    
                          VerticalDivider(
                            color: Colors.black,
                            indent: 10,
                            endIndent: 10,
                            thickness: 0.3,
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage('assets/filter.png'),
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,                    
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )
                ),
              ),
            ),
        
            Padding(
              padding: EdgeInsets.all(15.0),              
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  mainAxisExtent: 200),                  
                itemCount: catalogProvider.results.length, 
                itemBuilder: (context, index) {                  

                  Puppy pet = puppy[index];
                  bool addedToCart = cartProvider.items.contains(pet);

                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                                  color: Color(0xffE5E1DA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                    
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: PuppyDetails(pet: pet,)));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                  image: AssetImage(puppy[index].image),                                                  
                                ),
                          ),
                        ),

                        SizedBox(height:10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              puppy[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13),                              
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "₱${puppy[index].price.toStringAsFixed(0)}",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Color(0xff76453B),),                              
                              ),

                            SizedBox(width: 70,),

                            GestureDetector(
                              onTap: () {
                                if(addedToCart) {
                                  cartProvider.remove(pet);
                                }
                                else{
                                  cartProvider.add(pet);
                                }
                              },
                              child: Image(
                                  image: addedToCart 
                                  ? AssetImage("assets/check.png")
                                  :AssetImage("assets/small-cart.png"),
                                  width: 15,
                                  height: 15,
                                  fit: BoxFit.contain,                                                 
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
            )
          ],
        ),
      ),
    );
  }
}