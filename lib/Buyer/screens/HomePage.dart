import 'package:flutter/material.dart';

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
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.red, fontFamily: 'Poppins', fontSize: 18),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Poppins', fontSize: 18),
                ),
              ],
            ),
          ),
          //
          Container(
            height: 150,
            margin: EdgeInsets.only(left: 20, right: 10),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
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
                            'assets/images/child.jpg',
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
                      child: GestureDetector(
                        onTap: () {
                          print('delete image from List');
                          setState(() {
                            print('set new state of images');
                          });
                        },
                        child: Text(
                          'Child',
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                      ),
                    ),
                    Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.61),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        )),
                  ],
                ),

                Card(
                  child: Container(
                    height: 100,
                    width: 300,
                    child: Center(
                      child: Text('Man',
                          style: Theme.of(context).textTheme.headline3
                          //  style: TextStyle(fontSize: 16),
                          ),
                    ),
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/man.png',
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    height: 100,
                    width: 300,
                    child: Center(
                      child: Text('Women',
                          style: Theme.of(context).textTheme.headline3
                          //  style: TextStyle(fontSize: 16),
                          ),
                    ),
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/female.webp',
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    height: 100,
                    width: 300,
                    child: Center(
                      child: Text('Child',
                          style: Theme.of(context)
                              .copyWith(accentColor: Colors.white24)
                              .textTheme
                              .headline3
                          //  style: TextStyle(fontSize: 16),
                          ),
                    ),
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/child.jpg',
                        ),
                      ),
                    ),
                  ),
                ),

                // Stack(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //        // color: Colors.red,
                //         // boxShadow: [
                //         //   BoxShadow(
                //         //     color: Colors.grey,
                //         //     blurRadius: 10.0,
                //         //     spreadRadius: 3.0,
                //         //     offset: Offset(10.0, 10.0),
                //         //   ),
                //         // ],
                //         image: new DecorationImage(
                //           fit: BoxFit.fill,
                //           image: AssetImage(
                //             'assets/images/man.png',
                //           ),
                //         ),
                //       ),
                //       alignment: Alignment.centerRight,
                //       width: 300,
                //       height: 300,
                //       child: RotatedBox(
                //         quarterTurns: 1,
                //         child: Container(
                //
                //         color: Colors.white24,),
                //       ),
                //     ),
                //     // Container(
                //     //   decoration: BoxDecoration(
                //     //     color: Colors.red,
                //     //     boxShadow: [
                //     //       BoxShadow(
                //     //         color: Colors.grey,
                //     //         blurRadius: 10.0,
                //     //         spreadRadius: 3.0,
                //     //         offset: Offset(10.0, 10.0),
                //     //       ),
                //     //     ],
                //     //   ),
                //     //   alignment: Alignment.centerRight,
                //     //   width: 300,
                //     //   height: 300,
                //     //   child: RotatedBox(
                //     //     quarterTurns: 1,
                //     //     child: Text(
                //     //       'MAN',
                //     //       style: TextStyle(fontSize: 18.0, color: Colors.white),
                //     //     ),
                //     //   ),
                //     // ),
                //
                //     Positioned(
                //       top: -50,
                //       right: 30,
                //       child: Container(
                //         decoration: BoxDecoration(
                //           color: Colors.grey.withOpacity(0.0),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.black54,
                //               blurRadius: 10.0,
                //               spreadRadius: 2.0,
                //               offset: Offset(5.0, 5.0),
                //             ),
                //           ],
                //         ),
                //         alignment: Alignment.center,
                //         width: 200,
                //         height: 200,
                //         child: Text(
                //           'Man',
                //           style: TextStyle(fontSize: 18.0, color: Colors.white),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                // Container(
                //   width: 220,
                //   child: Image.asset('assets/images/man.png', fit: BoxFit.fill),
                // ),
                // SizedBox(width: 20,),
                // Container(
                //   width: 220,
                //   child: Image.asset('assets/images/female.webp', fit: BoxFit.fill,),
                // ),
                // SizedBox(width: 20,),
                // Container(
                //   width: 220,
                //   child: Image.asset('assets/images/child.jpg', fit: BoxFit.fill),
                // ),
                //
                // Card(
                //   elevation: 3,
                //   shape: RoundedRectangleBorder(
                //     borderRadius:
                //     BorderRadius.circular(15.0),
                //   ),
                //   // margin: EdgeInsets.only(left: 10),
                //   child: Stack(
                //     children: [
                //       Container(
                //           width: 280,
                //           height: 150,
                //           decoration: BoxDecoration(
                //             image: new DecorationImage(
                //                 fit: BoxFit.fill,
                //                 image: AssetImage('assets/images/man.png',
                //                 )),
                //           ),
                //           child: Opacity(
                //             opacity: 0.346,
                //             child: Image.asset(
                //               "asset/images/female.webp",
                //               fit: BoxFit.fill,
                //               colorBlendMode:
                //               BlendMode.clear,
                //             ),
                //           )
                //         //
                //       ),
                //       Center(
                //         child: Container(
                //           margin: EdgeInsets.only(
                //               left: 10, right: 10),
                //           padding:
                //           const EdgeInsets.all(10),
                //           decoration: BoxDecoration(
                //            // color: Colors.black,
                //             borderRadius:
                //             BorderRadius.circular(5),
                //           ),
                //           width: 250,
                //           child: Stack(
                //             children: [
                //               // Positioned(
                //               //   top: 1,
                //               //   height: 15,
                //               //   right: 10,
                //               //   child: Container(
                //               //     color: Colors.red,
                //               //     child: Text(
                //               //       collection[index]
                //               //           .itemsCount
                //               //           .toString(),
                //               //       maxLines: 3,
                //               //       textAlign:
                //               //       TextAlign.center,
                //               //       style: TextStyle(
                //               //           color:
                //               //           Colors.white,
                //               //           fontSize: 14,
                //               //           fontWeight:
                //               //           FontWeight
                //               //               .w700),
                //               //       overflow: TextOverflow
                //               //           .ellipsis,
                //               //     ),
                //               //   ),
                //               // ),
                //               // SizedBox(
                //               //   width: 10,
                //               // ),
                //               Text(
                //                'MAN',
                //                 maxLines: 3,
                //                 textAlign:
                //                 TextAlign.center,
                //                 style: TextStyle(
                //                     color: Colors.white,
                //                     fontSize: 13.5,
                //                     fontWeight:
                //                     FontWeight.w700),
                //                 overflow:
                //                 TextOverflow.ellipsis,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
