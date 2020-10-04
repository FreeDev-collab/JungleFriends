import 'package:flutter/material.dart';

import '../utils/constants.dart';

class VideosTabWidget extends StatelessWidget {
  const VideosTabWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: jfMonkeyVideos.length,
        separatorBuilder: (ctx, index) => Divider(),
        itemBuilder: (ctx, i) => ListTile(
          title: Text(
            jfMonkeyVideos[i],
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
              fontFamily: 'Comfortaa',
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
