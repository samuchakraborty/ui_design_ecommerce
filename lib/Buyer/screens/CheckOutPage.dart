import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/screens/HomePage.dart';

import '../../constant.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 200,
              //  margin: EdgeInsets.only(left: 100),

              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(
                CupertinoIcons.check_mark,
                size: 200,
              ),
            ),
            SizedBox(height: 40,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Congratulations",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                Container(
                  width: 650,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    "Your order has been placed successfully Please Check the delivery status",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              //  width: 200,
              //  margin: EdgeInsets.only(left: 100),
              child: ElevatedButton(
                style: buttonStyleContinue,
                child: Text(
                  'Continue Shopping',
                  style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
