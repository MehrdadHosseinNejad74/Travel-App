import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.detailModel,
  }) : super(key: key);

  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 10,
      left: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detailModel.description,
            style: kDefaultTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.035),
          ),
          SizedBox(
            height: kDefaultPadding / 10,
          ),
          Text(
            detailModel.price != null
                ? 'From \$' + detailModel.price.toStringAsFixed(0)
                : detailModel.country,
            style: kDefaultTextStyle.copyWith(
                color: Colors.white.withOpacity(0.75),
                fontWeight: FontWeight.w100,
                fontSize: size.width * 0.035),
          )
        ],
      ),
    );
  }
}