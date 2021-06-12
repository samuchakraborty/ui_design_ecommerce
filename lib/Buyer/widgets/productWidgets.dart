import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProductWidgets extends StatelessWidget {
  ProductWidgets(
      {required this.image, required this.productName, required this.price});

  final String image;
  final double price;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        //   mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                // child: Image.asset(image),
              ),
              Positioned(
                top: 10,
                right: 16,
                child: Icon(EvaIcons.heartOutline, size: 30,),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(height: 18, child: Text(productName)),
          SizedBox(
            height: 8,
          ),
          Container(height: 18, child: Text("\$ " + price.toString())),
        ],
      ),
    );
  }
}
