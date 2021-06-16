import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../constant.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(left: 70),
                    child: Text(
                      "Cart",
                      style: h1TextStyle,
                      maxLines: 2,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                child: Image.asset('assets/product/bag.webp'),
                              ),
                              Column(
                                children: [
                                  Text('Bag'),
                                  Text('\$18888'),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.add),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //   // color: Colors.blue,
                                    //   // border: Border.all(color: Colors.grey),
                                    //   // borderRadius: BorderRadius.all(
                                    //   //   Radius.circular(40),
                                    //   // ),
                                    // ),
                                    child: Text('1'),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.minus),
                                  ),
                                ],
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                // decoration: BoxDecoration(
                                //   color: Colors.blue,
                                //   border: Border.all(color: Colors.grey),
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(40),
                                //   ),
                                // ),
                                child: Icon(CupertinoIcons.trash),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                          Divider(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                child: Image.asset('assets/product/oil.jpg'),
                              ),
                              Column(
                                children: [
                                  Text('Oil'),
                                  Text('\$18888'),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.add),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //   // color: Colors.blue,
                                    //   // border: Border.all(color: Colors.grey),
                                    //   // borderRadius: BorderRadius.all(
                                    //   //   Radius.circular(40),
                                    //   // ),
                                    // ),
                                    child: Text('1'),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.minus),
                                  ),
                                ],
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                // decoration: BoxDecoration(
                                //   color: Colors.blue,
                                //   border: Border.all(color: Colors.grey),
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(40),
                                //   ),
                                // ),
                                child: Icon(CupertinoIcons.trash),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                          Divider(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                child: Image.asset('assets/product/camera.webp'),
                              ),
                              Column(
                                children: [
                                  Text('Camera'),
                                  Text('\$18888'),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.add),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //   // color: Colors.blue,
                                    //   // border: Border.all(color: Colors.grey),
                                    //   // borderRadius: BorderRadius.all(
                                    //   //   Radius.circular(40),
                                    //   // ),
                                    // ),
                                    child: Text('1'),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: Icon(CupertinoIcons.minus),
                                  ),
                                ],
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                // decoration: BoxDecoration(
                                //   color: Colors.blue,
                                //   border: Border.all(color: Colors.grey),
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(40),
                                //   ),
                                // ),
                                child: Icon(CupertinoIcons.trash),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                    // height: 100,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                      // decoration: BoxDecoration(
                      //
                      //
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(30),
                      //     topRight: Radius.circular(30),
                      //     bottomRight: Radius.circular(30),
                      //     bottomLeft: Radius.circular(30),
                      //   ),
                      //
                      // ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                      alignment: Alignment.center,
                              width: 140,
                              height: 50,
                              child: Text('Have a promo code', style: TextStyle(fontSize: 15),),),

                          SizedBox(width: 20,),
                          Container(
                            width: 190,
                            height: 50,
                            decoration: BoxDecoration(

                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                //topRight: Radius.circular(14),
                                //bottomRight: Radius.circular(14),
                                bottomLeft: Radius.circular(14),
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              // autofocus: true,
                              decoration: InputDecoration(
                                hintStyle:
                                    TextStyle(color: Colors.red, fontSize: 20),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: 'Enter Promo Code',
                                // enabledBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.blueAccent),
                                // ),
                                //isDense: true,                      // Added this
                                //  contentPadding: EdgeInsets.all(15),
                              ),
                              onChanged: (value) {
                                print(value);
                              },
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 50,
                            decoration: BoxDecoration(
color: Colors.indigo,
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.only(
                                //topLeft: Radius.circular(14),
                                topRight: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                                //bottomLeft: Radius.circular(14),
                              ),
                            ),
                            child: Icon(CupertinoIcons.chevron_right)
                          ),

                        ],
                      ),
                    ),
                  ),




                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      // height: 100,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),


                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text('No of Item'),

                              Text('0'),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Subtotal'),

                              Text('%30'),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shipping'),

                              Text('\$ 20'),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Estimated Tax'),

                              Text('\$ 12'),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 200,
                    margin: EdgeInsets.only(left: 100),
                    child: ElevatedButton(
                      style: buttonStyleContinue,
                      child:Text( 'CHECKOUT', style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),),
                      onPressed: (){

                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
