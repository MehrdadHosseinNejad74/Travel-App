import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/detail_model.dart';
import 'package:travel_app/screen/home_screen/component/travel_list_cover.dart';
import 'package:travel_app/screen/home_screen/component/travel_list_header.dart';

class TravelList extends StatelessWidget {
  final String header;
  final List<DetailModel> detailModel;

  const TravelList({
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
          TravelListHeader(header: header),
          TravelListCover(detailModel: detailModel)
        ],
      ),
    );
  }
}
