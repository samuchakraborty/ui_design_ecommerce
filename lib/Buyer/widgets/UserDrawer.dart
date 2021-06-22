import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/Buyer/account/AccountPage.dart';

import '../../constant.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 280,
            child: DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Column(
                //shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(CupertinoIcons.clear),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        //   backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'assets/images/child.jpg',
                          // fit: BoxFit.contain,
                        ),
                        // child: Container(   width: 100,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Samu Chakraborty", style: emailTextStyle),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "samuckb@gmail.com",
                        style: emailTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomDrawerItem(
            isOptional: false,
            icon: CupertinoIcons.person_alt,
            labelText: 'My Account',
            route: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AccountPage(),
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomDrawerItem(
            isOptional: false,
            icon: CupertinoIcons.flag,
            labelText: 'New Collection',
          ),
          SizedBox(
            height: 10,
          ),
          CustomDrawerItem(
            isOptional: false,
            icon: CupertinoIcons.square_favorites_fill,
            labelText: 'Categories',
          ),
          SizedBox(
            height: 10,
          ),
          CustomDrawerItem(
            isOptional: false,
            icon: CupertinoIcons.mail,
            labelText: 'Message',
          ),
          SizedBox(
            height: 10,
          ),
          CustomDrawerItem(
            isOptional: false,
            icon: CupertinoIcons.settings,
            labelText: 'Settings',
          ),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log Out',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  CustomDrawerItem(
      {required this.labelText,
      required this.isOptional,
      this.route,
      required this.icon,
      this.iconsOptional});

  final IconData icon;
  final String labelText;
  final IconData? iconsOptional;
  final bool isOptional;
  final Function()? route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        margin:
            isOptional == false ? EdgeInsets.only(left: 40) : EdgeInsets.all(0),
        padding: isOptional == false ? EdgeInsets.all(10) : EdgeInsets.all(0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            Text(
              labelText,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(iconsOptional),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
          ],
        ),
      ),
    );
  }
}
