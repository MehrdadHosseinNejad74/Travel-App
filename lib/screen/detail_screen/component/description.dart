import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';
import 'package:travel_app/screen/detail_screen/component/star_rate.dart';

class Description extends StatelessWidget {
  const Description({
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
        Text(
          travelModel.description,
          style: kDefaultTextStyle.copyWith(
              fontSize: size.width * 0.06, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          travelModel.country +
              ' . ' +
              travelModel.destination.toStringAsFixed(0) +
              ' km',
          style: kDefaultTextStyle.copyWith(
            fontSize: size.width * 0.035,
            color: kDefaultSecondaryColor.withOpacity(0.75),
          ),
        ),
        Row(
          children: [
            Star(
              like: travelModel.rate,
              dislike: 5 - travelModel.rate,
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(travelModel.rate.toString(),
                style: kDefaultTextStyle.copyWith(
                  fontSize: size.width * 0.035,
                  color: kDefaultSecondaryColor.withOpacity(1),
                ))
          ],
        )
      ],
    );
  }
}