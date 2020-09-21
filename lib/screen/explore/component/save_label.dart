import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';

class SaveLabel extends StatelessWidget {
  const SaveLabel({
    Key key,
    @required this.detailModel,
  }) : super(key: key);

  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      left: -size.width * 0.060,
      child: Transform.rotate(
        angle: (-pi / 4),
        child: Container(
          padding: EdgeInsets.only(left: size.width * 0.04),
          color: Color(0xffEFA500),
          width: size.width * 0.3,
          height: 15,
          child: Text(
            'Save' + detailModel.save.toStringAsFixed(0) + '%',
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.026),
          ),
        ),
      ),
    );
  }
}