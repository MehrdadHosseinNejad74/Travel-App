import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/tip_model.dart';
import 'package:travel_app/screen/detail_screen/component/tip_item.dart';
import 'package:travel_app/screen/detail_screen/component/title.dart';

class Tips extends StatelessWidget {
  const Tips();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            value: 'Tips',
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TipItem(
                  itemIndex: index,
                );
              },
              itemCount: tips.length,
            ),
          )
        ],
      ),
    );
  }
}
