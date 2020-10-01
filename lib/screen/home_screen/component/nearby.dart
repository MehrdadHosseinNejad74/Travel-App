import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/travel_model.dart';

import 'travel_list.dart';

class Nearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TravelList(
          header: 'Tours',
          detailModel: tours,
        ),
        TravelList(
          header: 'Nature',
          detailModel: nearbyNature,
        ),
        TravelList(
          header: 'Landmarks',
          detailModel: nearbyLandmarks,
        ),
        TravelList(
          header: 'Local food',
          detailModel: localFood,
        )
      ],
    );
  }
}
