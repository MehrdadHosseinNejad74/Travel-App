import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/person_model.dart';

class Profile extends StatelessWidget {
  final Person person;

  const Profile({Key key, @required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          radius: size.width * 0.08,
          child: Image(
            image: AssetImage(person.profileImageUrl),
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning,',
              style: kDefaultTextStyle.copyWith(
                letterSpacing: 1,
                  fontSize: size.width * 0.045, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),
            Text(person.name,
                style: kDefaultTextStyle.copyWith(
                  letterSpacing: 1,
                    fontSize: size.width * 0.045, fontWeight: FontWeight.w600))
          ],
        )
      ],
    );
  }
}
