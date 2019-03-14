import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  final dynamic onPressed;
  final dynamic label;

  PrimaryButton({ this.onPressed, this.label});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      textColor: Colors.white,
      splashColor: Colors.green,
      color: Color.fromRGBO(255, 173, 6, 1),
      child: label is String ? Text(label?.toUpperCase() ?? '',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ) : label
    );
  }
}