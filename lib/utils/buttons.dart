import 'package:flutter/material.dart';

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
    return InkWell(
      child: Material(
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
        color: Color(0xFFD75D2A),
      ),
      onTap: onPressed,
    );
  }
}
