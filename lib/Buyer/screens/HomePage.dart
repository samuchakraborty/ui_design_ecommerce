import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/models/itemModel.dart';
import 'package:ui_design/Buyer/widgets/ShoppingCart.dart';
import 'package:ui_design/Buyer/widgets/UserDrawer.dart';
import 'package:ui_design/Buyer/widgets/ViewAll.dart';
import 'package:ui_design/Buyer/widgets/categoryWidgets.dart';
import 'package:ui_design/Buyer/widgets/productWidgets.dart';

import 'ProductPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> reversedProduct = products.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserDrawer(),
      appBar: AppBar(
        elevation: 0,
        //  automaticallyImplyLeading: false,

        actions: [
          Row(
            children: [
              ShoppingCartIcon(),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            //  padding: const EdgeInsets.all(8.0),
            margin: EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 40),
            child: TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blueAccent,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.search),
                hintText: "Search Product",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ViewAll(
            itemName: 'Categories',
          ),
          SizedBox(
            height: 10,
          ),
          //
          Container(
            height: 80,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryWidgets(
                    image: 'assets/images/female.webp',
                    labelText: 'Women',
                    color: Colors.grey.withOpacity(.61)),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/man.png',
                  labelText: 'Man',
                  color: Colors.redAccent.withOpacity(.61),
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/child.jpg',
                  labelText: 'Child',
                  color: Colors.greenAccent.withOpacity(.61),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          ViewAll(
            itemName: 'New Collection',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 214,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => ProductPage(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                  child: ProductWidgets(
                    image: products[index].image,
                    price: products[index].price,
                    productName: products[index].productName,
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 20,
          ),
          ViewAll(
            itemName: 'Featured',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 214,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: reversedProduct.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => ProductPage(
                          product: reversedProduct[index],
                        ),
                      ),
                    );
                  },
                  child: ProductWidgets(
                    image: reversedProduct[index].image,
                    price: reversedProduct[index].price,
                    productName: reversedProduct[index].productName,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
