import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';

class Glance extends StatelessWidget {
  const Glance({
    Key key,
    @required this.travelModel,
  }) : super(key: key);

  final TravelModel travelModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'At a glance',
            style: kDefaultTextStyle.copyWith(
                fontSize: size.width * 0.04, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(travelModel.glance,
              style: kDefaultTextStyle.copyWith(
                  height: 1.8, fontSize: size.width * 0.04))
        ],
      ),
    );
  }
}