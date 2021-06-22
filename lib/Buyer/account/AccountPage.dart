import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/order/OrderPage.dart';
import 'package:ui_design/Buyer/widgets/UserDrawer.dart';

import '../../constant.dart';

class AccountPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 40, top: 20, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
//              alignment: Alignment.topCenter,

              child: Text(
                "My Account",
                style: h1TextStyle,
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 50,
                    //backgroundImage: AssetImage('assets/product/sunglass.webp',
                    child: Icon(Icons.person),
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Samu Chakraborty',
                      style: emailTextStyle,
                    ),
                    Text(
                      'samuckb@gmail.com',
                      style: emailTextStyle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.home,
                    labelText: 'Home',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                  SizedBox(height: 10,),

                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.favorite,

                    labelText: 'Wishlist',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                  SizedBox(height: 10,),
                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.list_alt,
                    labelText: 'Orders',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                    route: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => OrderPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                  SizedBox(height: 10,),
                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.location_on,
                    labelText: 'Address',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                  SizedBox(height: 10,),
                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.payments,
                    labelText: 'Payment',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                  SizedBox(height: 10,),
                  CustomDrawerItem(
                    isOptional: true,
                    icon: Icons.keyboard_return,
                    labelText: 'Returns',
                    iconsOptional: Icons.arrow_forward_ios_sharp,
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 2,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
