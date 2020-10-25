import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/tip_model.dart';

class TipItem extends StatelessWidget {
  final int itemIndex;

  TipItem({@required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.12,
        margin: EdgeInsets.only(
            left: 2,
            right: kDefaultPadding / 2,
            top: 0,
            bottom: 0),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(2, 2)),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tips[itemIndex].icon,
            SizedBox(
              height: kDefaultPadding / 4,
            ),
            Text(
              tips[itemIndex].description,
              style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.03,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),
            Text(
              tips[itemIndex].title,
              style: kDefaultTextStyle.copyWith(
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold,
                  color: kDefaultSecondaryColor),
            )
          ],
        ),
      ),
    );
  }
}
