import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MeetTheMonkeysTabWidget extends StatelessWidget {
  const MeetTheMonkeysTabWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: jfMonkeyKind.length,
        separatorBuilder: (ctx, index) => Divider(),
        itemBuilder: (ctx, i) => ListTile(
          title: Text(
            jfMonkeyKind[i],
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
