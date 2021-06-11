
import 'package:flutter/material.dart';


class ViewAll extends StatelessWidget {
 ViewAll({required this.itemName});
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: TextStyle(
                color: Colors.red, fontFamily: 'Poppins', fontSize: 20),
          ),
          Text(
            'View all',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Poppins', fontSize: 18),
          ),
        ],
      ),
    );
  }
}
