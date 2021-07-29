import 'dart:ui';

import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Widget text;
  final Function onPressed;
  final Color btnColor;

  BuildButton({this.text, this.onPressed, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      onPressed: onPressed,
      child: text,
      color: Colors.teal[300],
    );
  }
}
