import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_design/Buyer/provider/store.dart';

import '../../constant.dart';
import 'CheckOutPage.dart';

class CartPage extends ConsumerWidget {


  @override
  Widget build(BuildContext context, ScopedReader watch) {

      final cartItem = watch(cartNotifier).basket;
     final cartSubtotal = watch(cartNotifier).getBasketTotalPrice();
      //  print(cartItem[0]);

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
                        height: 400,
                        // margin: EdgeInsets.only(left: 20,top: 10, right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                          ),
                        ),
                        child: cartItem.length != 0
                            ? ListView.separated(
                                itemCount: cartItem.length,
                                itemBuilder: (context, index) {
                                  if (cartItem.length > 0) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 10),
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 100,
                                            child: Image.asset(
                                                cartItem[index].image),
                                          ),
                                          Column(
                                            children: [
                                              Text(cartItem[index].productName),
                                              Text(cartItem[index]
                                                  .price
                                                  .toString()),
                                            ],
                                          ),
                                          Container(
                                              child: Text(
                                                  '${cartItem[index].price * cartItem[index].qty}')),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(40),
                                                  ),
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    context
                                                        .read(cartNotifier)
                                                        .addOneItemIntoBasket(
                                                            cartItem[index]);
                                                  },
                                                  child:
                                                      Icon(CupertinoIcons.add),
                                                ),
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
                                                child: Text(cartItem[index]
                                                    .qty
                                                    .toString()),
                                              ),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(40),
                                                  ),
                                                ),
                                                child:
                                                    Icon(CupertinoIcons.minus),
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
                                            child: InkWell(
                                              onTap: () {
                                                context
                                                    .read(cartNotifier)
                                                    .removeOneItemIntoBasket(
                                                        cartItem[index]);
                                              },
                                              child: Icon(CupertinoIcons.trash),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return Container(
                                        child: Text(
                                      'No Item Found',
                                      style: TextStyle(color: Colors.red),
                                    ));
                                  }
                                },
                                separatorBuilder: (context, index) {
                                  return Divider(
                                    height: 2,
                                  );
                                },
                              )
                            : Container(
                                child: Text(
                                'No Item Found',
                                style: TextStyle(color: Colors.red),
                              )),
                        //  }),
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
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),
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
                              width: MediaQuery.of(context).size.width / 4,
                              height: 50,
                              child: Text(
                                'Have a promo code',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.8,
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
                                  hintStyle: TextStyle(
                                      color: Colors.red, fontSize: 20),
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
                                width: MediaQuery.of(context).size.width / 8,
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
                                child: Icon(CupertinoIcons.chevron_right)),
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
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),

                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('No of Item'),
                                Text(context
                                    .read(cartNotifier)
                                    .basket
                                    .length
                                    .toString()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Subtotal'),
                                Text(cartSubtotal.toString()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shipping'),
                                Text('\$ 20'),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      margin: EdgeInsets.only(left: 100),
                      child: ElevatedButton(
                        style: buttonStyleContinue,
                        child: Text(
                          'CHECKOUT',
                          style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOutPage()),
                          );
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
