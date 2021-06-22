import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin {

   late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              // TabBar(
              //   controller: tabController,
              //   indicatorColor: Colors.grey,
              //   labelColor: Colors.black,
              //   unselectedLabelColor: Colors.grey,
              //   tabs: [
              //     Container(child: Text('Open Orders')),
              //     Container(child: Text('Open History')),
              //   ],
              // ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.grey,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                      text: 'Sale',
                      icon: Icon(Icons.directions_car,
                          color: _tabController.index == 0
                              ? Colors.black
                              : Colors.grey)),
                  Tab(
                      text: 'Latest',
                      icon: Icon(Icons.directions_transit,
                          color: _tabController.index == 1
                              ? Colors.black
                              : Colors.grey)),

                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text('tab 1'),
                    Text('Tab 2'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
