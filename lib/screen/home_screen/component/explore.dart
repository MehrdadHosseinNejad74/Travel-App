import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/travel_model.dart';
import 'package:travel_app/screen/home_screen/component/worth_visiting.dart';

import 'travel_destination_list.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WorthVisiting(),
        TravelDestinationList(
          header: 'Special offers',
          detailModel: specialOffers,
        ),
        TravelDestinationList(
          header: 'Upcoming tours',
          detailModel: upcomingTours,
        ),
        TravelDestinationList(
          header: 'Enjoy the nature',
          detailModel: nature,
        ),
        TravelDestinationList(
          header: 'Landmarks to visit',
          detailModel: landmarks,
        )
      ],
    );
  }
}
