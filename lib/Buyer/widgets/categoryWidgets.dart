import 'package:flutter/material.dart';

class CategoryWidgets extends StatelessWidget {
  CategoryWidgets({required this.image,
    required this.color,

    required this.labelText});

  final String image;
final Color color;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(
               image,
              ),
              fit: BoxFit.fill,
            ),
          ),
          // child: Image.asset(
          // 'assets/images/child.jpg',
          //  fit: BoxFit.fill,
          // ),
        ),
        Positioned(
          top: 60,
//right: 90,
          left: 40,
          child: Text(
           labelText,
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
