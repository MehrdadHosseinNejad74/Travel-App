import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/travel_model.dart';
import 'package:travel_app/screen/home_screen/component/travel_destination_content.dart';
import 'package:travel_app/screen/home_screen/component/travel_destination_header.dart';

class TravelDestinationList extends StatelessWidget {
  final String header;
  final List<TravelModel> detailModel;

  const TravelDestinationList({
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
          Header(header: header),
          Content(detailModel: detailModel)
        ],
      ),
    );
  }
}
