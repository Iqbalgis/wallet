import 'package:ewalllet/pages/components/cart.dart';
import 'package:ewalllet/pages/components/department.dart';
import 'package:ewalllet/pages/components/home.dart';
import 'package:ewalllet/pages/components/more.dart';
import 'package:ewalllet/pages/components/search.dart';
import 'package:supercharged/supercharged.dart';
import 'package:ewalllet/pages/ui/home_page.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ServiceMenu extends StatefulWidget {
  @override
  _ServiceMenuState createState() => _ServiceMenuState();
}

class _ServiceMenuState extends State<ServiceMenu>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "2E2D4E".toColor(),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          Department(),
          Cart(),
          Search(),
          More(),
        ],
        // If you want to disable swiping in tab the use below code
        // physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Color(0xFFC41A3B),
              unselectedLabelColor: "343655".toColor(),
              labelStyle: TextStyle(fontSize: 10.0),

              //For Indicator Show and Customization
              indicatorColor: "343655".toColor(),
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 24.0,
                  ),
                  text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 24.0,
                  ),
                  text: 'Cart',
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.more,
                    size: 24.0,
                  ),
                  text: 'More',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
