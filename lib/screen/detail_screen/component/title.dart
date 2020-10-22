import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';

class SectionTitle extends StatelessWidget {
  final String value;

  const SectionTitle({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text(
      value,
      style: kDefaultTextStyle.copyWith(
          fontSize: size.width * 0.04, fontWeight: FontWeight.w700),
    );
  }
}
