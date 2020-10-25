import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';
import 'package:travel_app/routing/fade_route.dart';
import 'package:travel_app/screen/detail_screen/detail_screen.dart';
import 'package:travel_app/screen/home_screen/component/save_label.dart';

import 'cover_image.dart';
import 'dark_gradient.dart';
import 'description.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.detailModel,
  }) : super(key: key);

  final List<TravelModel> detailModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: detailModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.topCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    FadeRoute(
                        page: DetailScreen(
                      travelModel: detailModel[index],
                    )));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0, kDefaultPadding / 1.5, kDefaultPadding, kDefaultPadding),
                width: size.width * 0.6,
                height: size.height * 0.35,
                child: Stack(
                  children: [
                    CoverImage(detailModel: detailModel[index]),
                    DarkGradient(
                      radius: 10,
                    ),
                    Description(detailModel: detailModel[index]),
                    detailModel[index].save != null
                        ? SaveLabel(detailModel: detailModel[index])
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
