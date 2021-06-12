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
          width: 180,
          height: 80,
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
          top: 30,
//right: 90,
          left: 50,
          child: Text(
           labelText,
            style: TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),
        ),
        Container(
          width: 180,
          height: 80,
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
