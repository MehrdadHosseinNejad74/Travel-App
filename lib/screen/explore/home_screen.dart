import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';
import 'package:travel_app/model/person_model.dart';
import 'package:travel_app/screen/explore/component/tabs.dart';
import 'package:travel_app/screen/explore/component/travel_input.dart';

import 'component/detail.dart';
import 'component/profile_info.dart';
import 'component/worth_visiting.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ProfileInfo(
            person: person,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TravelInput(),
          SizedBox(
            height: kDefaultPadding,
          ),
          Tabs(),
          SizedBox(
            height: kDefaultPadding,
          ),
          WorthVisiting(),
          //TODO BETTER NAME
          Details(
            header: 'Special offers',
            detailModel: specialOffers,
          ),
          Details(
            header: 'Upcoming tours',
            detailModel: upcomingTours,
          ),
          Details(
            header: 'Enjoy the nature',
            detailModel: nature,
          ) ,
          Details(
            header: 'Landmarks to visit',
            detailModel: landmarks,
          )
        ]),
      ),
    ));
  }
}
