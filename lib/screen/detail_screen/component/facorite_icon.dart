import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/tip_model.dart';
import 'package:travel_app/model/travel_model.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.304,
      right: 15,
      child: ClipOval(
        child: Container(
            width: size.width * 0.13,
            height: size.width * 0.13,
            decoration: BoxDecoration(color: Color(0xffF5F5F5), boxShadow: [
              BoxShadow(
                  offset: Offset(5, 5), color: Colors.black, blurRadius: 10),
            ]),
            child: Icon(
              Icons.favorite_border,
              color: kDefaultSecondaryColor,
            )),
      ),
    );
  }
}