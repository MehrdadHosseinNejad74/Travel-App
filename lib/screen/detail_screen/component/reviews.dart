import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/person_model.dart';
import 'package:travel_app/screen/detail_screen/component/review_box.dart';
import 'package:travel_app/screen/detail_screen/component/title.dart';

class Reviews extends StatelessWidget {
  const Reviews();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          value: 'Travelers’ reviews',
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        ReviewBox(
          name: 'Sara Smith',
          rate: 4,
          comment: 'Flawless, if heavy traffic lets...',
          profileImage: 'assets/images/profile/sara.png',
        ),
        ReviewBox(
          left: false,
          name: person.name + " " + person.family,
          rate: 5,
          comment: 'Great!',
          profileImage: person.profileImageUrl,
        ),
        ReviewBox(
          name: 'Diana wick',
          rate: 2,
          comment: 'Not Bad!',
          profileImage: 'assets/images/profile/meri.png',
        ),
      ],
    );
  }
}
