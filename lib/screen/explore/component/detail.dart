import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';
import 'package:travel_app/screen/explore/component/save_label.dart';

import 'cover_image.dart';
import 'dark_gradient.dart';
import 'description.dart';

class Details extends StatelessWidget {
  final String header;
  final List<DetailModel> detailModel;

  const Details({
    Key key,
    @required this.header,
    @required this.detailModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            header,
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: detailModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, kDefaultPadding / 1.5,
                        kDefaultPadding, kDefaultPadding),
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
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
