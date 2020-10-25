import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/travel_model.dart';

import 'travel_destination_list.dart';

class Nearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TravelDestinationList(
          header: 'Tours',
          detailModel: tours,
        ),
        TravelDestinationList(
          header: 'Nature',
          detailModel: nearbyNature,
        ),
        TravelDestinationList(
          header: 'Landmarks',
          detailModel: nearbyLandmarks,
        ),
        TravelDestinationList(
          header: 'Local food',
          detailModel: localFood,
        )
      ],
    );
  }
}
