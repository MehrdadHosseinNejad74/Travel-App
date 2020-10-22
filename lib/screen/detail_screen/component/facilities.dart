import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/facility_model.dart';
import 'package:travel_app/model/travel_model.dart';

class Facilities extends StatelessWidget {
  final TravelModel travelModel;

  const Facilities({Key key, this.travelModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: _createFacilityList(size, facilities),
    );
  }
}

List<Widget> _createFacilityList(Size size, List<Facility> facilities) {
  List<Widget> facilityList = List();
  facilities.forEach((facility) {
    facilityList.add(Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
      padding: EdgeInsets.all(kDefaultPadding / 3),
      width: size.width,
      decoration: BoxDecoration(
          color: Color.fromRGBO(229, 229, 229, 1),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              facility.icon,
              SizedBox(
                width: kDefaultPadding / 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    facility.description,
                    style: kDefaultTextStyle.copyWith(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(facility.title,
                      style: kDefaultTextStyle.copyWith(
                          fontSize: size.width * 0.030,
                          fontWeight: FontWeight.w500,
                          color: kDefaultSecondaryColor))
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Color(0xffBCBCBC),
                )),
            child: Text(
              'From \$' + facility.price.toStringAsFixed(0),
              style: kDefaultTextStyle.copyWith(
                  fontSize: size.width * 0.032,
                  fontWeight: FontWeight.bold,
                  color: kDefaultSecondaryColor),
            ),
          )
        ],
      ),
    ));
  });
  return facilityList;
}
