import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';
import 'package:travel_app/screen/detail_screen/component/title.dart';

class Glance extends StatelessWidget {
  const Glance({
    Key key,
    @required this.travelModel,
  }) : super(key: key);

  final TravelModel travelModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(value: 'At a glance',),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(travelModel.glance,
            style: kDefaultTextStyle.copyWith(
                height: 1.8, fontSize: size.width * 0.04))
      ],
    );
  }
}