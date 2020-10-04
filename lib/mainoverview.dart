import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import './pages/homepage.dart';
import './pages/explorepage.dart';
import './pages/morepage.dart';

class MainOverview extends StatefulWidget {
  static const routeName = '/mainoverview';

  @override
  _MainOverviewState createState() => _MainOverviewState();
}

class _MainOverviewState extends State<MainOverview> {
  int _currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return;
      },
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: [
            HomePage(),
            ExplorePage(),
            MorePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF6A8F49),
          showUnselectedLabels: true,
          onTap: (i) {
            setState(() {
              _currentPage = i;
            });
            _pageController.jumpToPage(i);
          },
          currentIndex: _currentPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Ionicons.ios_home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Entypo.news),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.more_horizontal),
              title: Text('More'),
            ),
          ],
        ),
      ),
    );
  }
}
