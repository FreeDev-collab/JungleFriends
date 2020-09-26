import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'pages/homepage.dart';
import 'pages/explorepage.dart';
import 'pages/morepage.dart';

class MainOverview extends StatefulWidget {
  static const routeName = '/mainoverview';
  final String title = 'Jungle Friends Primate Sanctuary';
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
        appBar: AppBar(
          elevation: 0,
          leading: Image.asset(
            'images/logo.jpg',
            fit: BoxFit.cover,
          ),
          title: Text(widget.title),
        ),
        endDrawer: CustomDrawer(),
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
          selectedItemColor: Theme.of(context).primaryColor,
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

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColorLight,
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          padding: const EdgeInsets.all(12.0),
          children: [
            SizedBox(
              height: 300,
            ),
            MoreButton(
              txt: 'Donate',
              onPressed: () {},
            ),
            SizedBox(
              height: 6.0,
            ),
            MoreButton(
              txt: 'Sponser a Monkey',
              onPressed: () {},
            ),
            SizedBox(
              height: 6.0,
            ),
            MoreButton(
              txt: 'Subscribe to Jungle News',
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Follow us',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              AntDesign.facebook_square,
                              color: Colors.indigo,
                            ),
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Card(
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              AntDesign.youtube,
                              color: Colors.red,
                            ),
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Card(
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              AntDesign.twitter,
                              color: Colors.lightBlue,
                            ),
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreButton extends StatelessWidget {
  final String txt;
  final Function onPressed;
  const MoreButton({
    Key key,
    @required this.txt,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12.0,
      borderOnForeground: true,
      child: Container(
        margin: const EdgeInsets.all(12.0),
        width: double.infinity,
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(20.0),
      color: Color(0xFF6A8F49),
    );
  }
}
