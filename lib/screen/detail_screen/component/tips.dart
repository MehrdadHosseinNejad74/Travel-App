import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/tip_model.dart';
import 'package:travel_app/screen/detail_screen/component/title.dart';

class Tips extends StatelessWidget {
  const Tips();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(value: 'Tips',),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: 2,
                      right: kDefaultPadding / 2,
                      top: kDefaultPadding / 10,
                      bottom: kDefaultPadding / 10),
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(0.1),
                            blurRadius: 5,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  width: size.width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      tips[index].icon,
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        tips[index].description,
                        style: kDefaultTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.03,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Text(
                        tips[index].title,
                        style: kDefaultTextStyle.copyWith(
                            fontSize: size.width * 0.025,
                            fontWeight: FontWeight.bold,
                            color: kDefaultSecondaryColor),
                      )
                    ],
                  ),
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
