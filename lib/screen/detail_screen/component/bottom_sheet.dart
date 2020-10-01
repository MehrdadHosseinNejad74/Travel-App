import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key key,
    this.travelModel,
  }) : super(key: key);

  final TravelModel travelModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      width: size.width * 0.9,
      height: size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('\$' + travelModel.price.toString(),
              style: kDefaultTextStyle.copyWith(
                  color: kDefaultSecondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.035)),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            'Book your reservation',
            style: kDefaultTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: size.width * 0.035),
          ),
        ],
      ),
    );
  }
}
