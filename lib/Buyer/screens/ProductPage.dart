import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/models/itemModel.dart';
import 'package:ui_design/widgets/CustomButton.dart';

class ProductPage extends StatefulWidget {
  ProductPage({required this.product});

  final Product product;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //  automaticallyImplyLeading: false,

        actions: [
          Row(
            children: [
              Icon(Icons.shop_2_outlined),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            //margin: EdgeInsets.all(20),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.grey),
            //   // borderRadius: BorderRadius.all(
            //   //   Radius.circular(14),
            //   // ),
            //   image: DecorationImage(
            //     image: AssetImage(
            //       widget.product.image,
            //     ),
            //     fit: BoxFit.fill,
            //   ),
            // ),
            child: Image.asset(widget.product.image, fit: BoxFit.fill),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    widget.product.productName,
                    style: TextStyle(
                        color: Colors.red.shade800,
                        fontFamily: 'Poppins',
                        fontSize: 26),
                  ),
                ),
                Container(
                  width: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Icon(
                    EvaIcons.heart,
                    size: 40,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    widget.product.productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 26),
                  ),
                ),
                Container(
                  // width: 60,
                  padding: EdgeInsets.all(5),
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   border: Border.all(color: Colors.grey),
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(40),
                  //   ),
                  // ),
                  child: Text(
                    '\$ ' + widget.product.price.toString(),
                    style: TextStyle(
                        color: Colors.red.shade800,
                        fontFamily: 'Poppins',
                        fontSize: 26),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: CustomButton(
                buttonName: 'ADD TO CART',
                onPressed: () {},
                icons: EvaIcons.shoppingCart,
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
