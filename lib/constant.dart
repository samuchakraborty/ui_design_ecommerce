import 'package:flutter/material.dart';



const h1TextStyle = TextStyle(fontSize: 30, color: Colors.black87,
    fontWeight: FontWeight.w500,
fontFamily: 'Poppins'
);


 ButtonStyle buttonStyleContinue = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.red),
  fixedSize: MaterialStateProperty.all(
    Size(
      400,
      60,
    ),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red))),
);