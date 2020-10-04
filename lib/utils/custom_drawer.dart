import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import './custom_pageroutes.dart';
import './buttons.dart';
import '../screens/contact_us.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            'Help Us Care for the Monkeys',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 10,
          ),
          children: [
            CircleAvatar(
              radius: 70.0,
              child: ClipRRect(
                child: Image.asset(
                  'images/logo.jpg',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 40,
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
            Padding(
              padding: const EdgeInsets.all(12),
              child: MoreButton(
                txt: 'Contact Us',
                onPressed: () {
                  Navigator.of(context).push(
                    CustomRoutes(
                      builder: (ctx) => ContactUsScreen(),
                    ),
                  );
                },
              ),
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
