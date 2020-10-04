import 'package:flutter/material.dart';

import '../utils/about_us_titleList.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/aboutus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        title: Text(
          'About us'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 5.0,
          runAlignment: WrapAlignment.spaceAround,
          children: <Widget>[
            for (final i in List.generate(11, (i) => i))
              InkWell(
                child: Chip(
                  elevation: 10,
                  shadowColor: Theme.of(context).primaryColorDark,
                  label: aboutUsTitleList[i],
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Color(0xFF6A8F49),
                ),
                splashColor: Colors.white,
                onTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}
