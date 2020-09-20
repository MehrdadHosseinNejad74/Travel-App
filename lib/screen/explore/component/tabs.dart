import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.05,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.fromLTRB(0, 0, kDefaultPadding, kDefaultPadding),
            child: Text(
              tabs[index],
              style: kDefaultTextStyle.copyWith(
                  color: kDefaultSecondaryColor, fontSize: size.width * 0.040),
            ),
          );
        },
        itemCount: tabs.length,
      ),
    );
  }
}
