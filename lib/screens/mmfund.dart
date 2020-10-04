import 'package:flutter/material.dart';

class MMFund extends StatelessWidget {
  static const routeName = 'mmfund';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monkey Medical Fund'.toUpperCase(),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
