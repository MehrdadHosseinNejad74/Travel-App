import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/screen/detail_screen/component/title.dart';
import 'package:travel_app/screen/home_screen/component/dark_gradient.dart';

class Shots extends StatelessWidget {
  const Shots();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          value: 'Travelers’ shots',
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Row(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/travelershots/los.png")),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Expanded(
              child: Container(
                height: size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: size.width * 0.26,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              height: size.width * 0.26,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/travelershots/san.png")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.26,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/travelershots/sun.png")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.14,
                      width: size.width * 0.55,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/travelershots/hori.png")),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned.fill(
                            child: DarkGradient(
                              radius: 10,
                            ),
                          ),
                          Center(
                              child: Text(
                            "+ 16 more",
                            style: kDefaultTextStyle.copyWith(
                                color: Colors.white, fontSize: size.width * 0.060),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
