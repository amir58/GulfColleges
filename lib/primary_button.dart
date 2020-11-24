import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressssed;
  final String text;
  double fontSize = 16.0;

  PrimaryButton({this.text, this.onPressssed, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 56,
        child: RaisedButton(
          color: Colors.white,
          padding: EdgeInsets.all(4),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.blue,
              fontFamily: 'cairo',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: onPressssed,
        ),
      ),
    );
  }
}
