import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/detail_model.dart';
import 'package:travel_app/screen/home_screen/component/worth_visiting.dart';

import 'travel_list.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WorthVisiting(),
        TravelList(
          header: 'Special offers',
          detailModel: specialOffers,
        ),
        TravelList(
          header: 'Upcoming tours',
          detailModel: upcomingTours,
        ),
        TravelList(
          header: 'Enjoy the nature',
          detailModel: nature,
        ),
        TravelList(
          header: 'Landmarks to visit',
          detailModel: landmarks,
        )
      ],
    );
  }
}
