import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkGradient extends StatelessWidget {
  final double radius;

  const DarkGradient({Key key, @required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black38, Colors.black26],
          )),
    );
  }
}
