import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildExploreCard(
            ctx: context,
            tileTitle: Text(tileTitles[0]),
            tileImage: tileImages[0],
            onPressed: () {},
          ),
          buildExploreCard(
            ctx: context,
            tileTitle: Text(tileTitles[1]),
            tileImage: tileImages[1],
            onPressed: () {},
          ),
          buildExploreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[2],
            ),
            tileImage: tileImages[2],
            onPressed: () {},
          ),
          buildExploreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[3],
            ),
            tileImage: tileImages[3],
            onPressed: () {},
          ),
          buildExploreCard(
            ctx: context,
            tileTitle: Text(
              tileTitles[4],
            ),
            tileImage: tileImages[4],
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Card buildExploreCard({
    BuildContext ctx,
    Widget tileTitle,
    Image tileImage,
    Function onPressed,
  }) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shadowColor: Theme.of(ctx).primaryColor,
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
