import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 10,
            ),
            Container(
              //  margin: EdgeInsets.only(left: 20, right: 20),
              //padding: EdgeInsets.all(10),
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
            SizedBox(
              height: 10,
            ),
            Container(
              //   margin: EdgeInsets.only(left: 20, right: 20),
              //  padding: EdgeInsets.all(10),
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
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              //    margin: EdgeInsets.only(left: 20, right: 20),
              //  padding: EdgeInsets.all(10),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Color',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Icon(EvaIcons.checkmarkOutline),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Icon(EvaIcons.checkmarkOutline),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Icon(EvaIcons.checkmarkOutline),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Text('S'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Text('L'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Text('M'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Text('XL'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Product Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "A simple yet fully customizable rating bar for flutter which "
                "also include a rating bar indicator, supporting any fraction of rating.",
                style: TextStyle(
                    color: Colors.red.shade800,
                    fontFamily: 'Poppins',
                    fontSize: 15),
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
