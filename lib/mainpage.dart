import 'package:flutter/material.dart';
import 'package:v_wash/Tabviews/alterationtablist.dart';
import 'package:v_wash/Tabviews/dyeingtablist.dart';
import 'package:v_wash/Tabviews/irontablist.dart';
import 'package:v_wash/Tabviews/premiumwashtablist.dart';
import 'package:v_wash/Tabviews/washtablist.dart';
import 'Drawers/maindrawer.dart';

class AllDetails extends StatefulWidget {
  _AllDetails createState() => _AllDetails();
}

class _AllDetails extends State<AllDetails>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      // appBar: AppBar(
      //   elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      drawer: MainDrawer(),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  shape: CircleBorder(),
                  elevation: 5.0,
                  // padding: EdgeInsets.all(5.0),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => _scaffoldkey.currentState.openDrawer(),
                  ),
                ),
                new MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  shape: CircleBorder(),
                  elevation: 5.0,
                  // padding: EdgeInsets.all(5.0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_basket),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Wash',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Iron',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Dyeing',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Alteration',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Premium Wash',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Tab(
                //   child: Text(
                //     'Wash',
                //     style: TextStyle(
                //         fontSize: 17.0,
                //         fontFamily: 'Montserrat',
                //         fontWeight: FontWeight.bold),
                //   ),
                // )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(controller: tabController, children: [
              WashTabList(),
              IronTab(),
              DyeingTab(),
              AlterationTab(),
              PremiumTab()
            ]),
          )
        ],
      ),
    );
  }
}

//
