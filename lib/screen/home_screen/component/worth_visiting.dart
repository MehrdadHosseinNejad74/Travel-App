import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/visit_cover_model.dart';
import 'package:travel_app/screen/home_screen/component/worth_visiting_item.dart';

class WorthVisiting extends StatelessWidget {
  const WorthVisiting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Worth visiting',
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
          ),
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return WorthVisitingItem(
                itemIndex: index,
              );
            },
            itemCount: visitCovers.length,
            scrollDirection: Axis.horizontal,
          ))
        ],
      ),
    );
  }
}
