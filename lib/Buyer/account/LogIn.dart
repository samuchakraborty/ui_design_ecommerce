import 'package:flutter/material.dart';
import 'package:ui_design/widgets/CustomButton.dart';
import 'package:ui_design/widgets/CustomTextField.dart';

import '../../constant.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 80, left: 40, right: 30),
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.end,
       //   mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(right: 120),
              child: Center(
                child: Text(
                  "Log In",
                  style: h1TextStyle,
                  maxLines: 2,
                ),
              ),
            ),


            SizedBox(
              height: 40,
            ),
            CustomTextField(
              labelName: 'Email',
              hintTextName: 'example@gmail.com',
              textInputType: TextInputType.emailAddress,
              onChangedFunction: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              labelName: 'Password',
              hintTextName: 'enter your password',
              textInputType: TextInputType.visiblePassword,
              obscureTextTy: _secureText,
              onChangedFunction: (value) {
                print(value);
              },
              icon: _secureText
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              onPressed: () {
                setState(() {
                  _secureText = !_secureText;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              buttonName: 'LOG IN',
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => SignUp(),),);
              },
            ),

           // SizedBox(height: 40,),

            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: TextStyle(fontSize: 17, fontFamily: 'Poppins'),),
                      Text("Sign up ", style: TextStyle(fontSize: 17, color: Colors.red, fontFamily: 'Poppins'),),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
