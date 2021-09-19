import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/constant.dart';

import 'Buyer/account/SignUp.dart';
import 'widgets/CustomButton.dart';
import 'widgets/custom_seller_buyer.dart';

class SellerOrBuyer extends StatefulWidget {
  @override
  _SellerOrBuyerState createState() => _SellerOrBuyerState();
}

enum PROFILE { SELLER, BUYER }

class _SellerOrBuyerState extends State<SellerOrBuyer> {
  PROFILE? selectedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 140, left: 40, right: 30),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(right: 120),
              child: Center(
                child: Text(
                  "Please Select Your Account Type",
                  style: h1TextStyle,
                  maxLines: 2,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProfile = PROFILE.BUYER;
                    });
                  },
                  child: CustomSellerBuyer(
                    containerHeight: 200,
                    containerWidth: MediaQuery.of(context).size.width/3,
                    textColor: selectedProfile == PROFILE.BUYER
                        ? Colors.white
                        : Colors.black,
                    borderColor: Colors.white,
                    icon: Icons.opacity,
                    backgroundColor: selectedProfile == PROFILE.BUYER
                        ? Colors.indigoAccent
                        : Colors.white,
                    textName: 'Buyer',
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProfile = PROFILE.SELLER;
                    });
                  },
                  child: CustomSellerBuyer(
                    containerHeight: 200,
                    containerWidth: MediaQuery.of(context).size.width/3,
                    textColor: selectedProfile == PROFILE.SELLER
                        ? Colors.white
                        : Colors.black,
                    borderColor: Colors.black87,
                    icon: Icons.opacity,
                    backgroundColor: selectedProfile == PROFILE.SELLER
                        ? Colors.indigoAccent
                        : Colors.white,
                    textName: 'Seller',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              buttonName: 'Continue',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
