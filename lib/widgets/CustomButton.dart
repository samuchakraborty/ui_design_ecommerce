import 'package:flutter/material.dart';

import '../constant.dart';


class CustomButton extends StatelessWidget {
   CustomButton({required this.onPressed, required this.buttonName});
final Function() onPressed;
final String buttonName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
      ),
      style: buttonStyleContinue,
    );
  }
}
