import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/person_model.dart';

import 'component/explore.dart';
import 'component/nearby.dart';
import 'component/profile_info.dart';
import 'component/tabs.dart';
import 'component/travel_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Profile(
            person: person,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SearchBar(),
          SizedBox(
            height: kDefaultPadding,
          ),
          Tabs(
            selectedTab: selectedTab,
            onClick: (tabIndex) {
              setState(() {
                selectedTab = tabIndex;
              });
            },
          ),
          selectedTab == 0 ? Explore() : Nearby()
        ]),
      ),
    ));
  }
}
