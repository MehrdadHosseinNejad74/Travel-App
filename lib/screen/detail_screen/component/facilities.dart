import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/facility_model.dart';
import 'package:travel_app/model/travel_model.dart';

import 'facility_item.dart';

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
      child: FacilityItem(
        facility: facility,
      ),
    ));
  });
  return facilityList;
}
