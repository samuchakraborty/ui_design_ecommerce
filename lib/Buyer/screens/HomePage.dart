import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/widgets/ViewAll.dart';
import 'package:ui_design/Buyer/widgets/categoryWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        //  automaticallyImplyLeading: false,

        actions: [
          Row(
            children: [
              Icon(Icons.shop_2_outlined),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            //  padding: const EdgeInsets.all(8.0),
            margin: EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 40),
            child: TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blueAccent,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.search),
                hintText: "Search Product",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ViewAll( itemName:
            'Categories',),
          //
          Container(
            height: 150,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryWidgets(
                    image: 'assets/images/female.webp',
                    labelText: 'Women',
                    color: Colors.grey.withOpacity(.61)),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/man.png',
                  labelText: 'Man',
                  color: Colors.redAccent.withOpacity(.61),
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/child.jpg',
                  labelText: 'Child',
                  color: Colors.greenAccent.withOpacity(.61),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          ViewAll( itemName:
          'New Collection',),

          Container(
            height: 150,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryWidgets(
                    image: 'assets/images/female.webp',
                    labelText: 'Women',
                    color: Colors.grey.withOpacity(.61)),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/man.png',
                  labelText: 'Man',
                  color: Colors.redAccent.withOpacity(.61),
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidgets(
                  image: 'assets/images/child.jpg',
                  labelText: 'Child',
                  color: Colors.greenAccent.withOpacity(.61),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
