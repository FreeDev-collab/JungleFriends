import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../screens/about_us.dart';
import '../utils/custom_pageroutes.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        title: Text(
          'Jungle Friends Primate Sanctuary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          buildMoreCard(
            ctx: context,
            tileTitle: Text(tileTitles[0]),
            tileImage: Image.asset('images/logo.jpg'),
            onPressed: () {
              Navigator.of(context).push(
                CustomRoutes(
                  builder: (ctx) => AboutUs(),
                ),
              );
            },
          ),
          buildMoreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[1],
            ),
            tileImage: tileImages[1],
            onPressed: () {},
          ),
          buildMoreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[2],
            ),
            tileImage: tileImages[2],
            onPressed: () {},
          ),
          buildMoreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[3],
            ),
            tileImage: tileImages[3],
            onPressed: () {},
          ),
          buildMoreCard(
            ctx: context,
            tileImage: Icon(Icons.image, size: 60, color: Colors.black),
            tileTitle: Text('Monkey Library'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Card buildMoreCard({
    BuildContext ctx,
    Widget tileTitle,
    Widget tileImage,
    Color color,
    Function onPressed,
  }) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shadowColor: Theme.of(ctx).primaryColor,
      color: Color(0xFF6A8F49),
      elevation: 10,
      child: Container(
        height: 80,
        child: Center(
          child: ListTile(
            leading: tileImage,
            title: tileTitle,
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
