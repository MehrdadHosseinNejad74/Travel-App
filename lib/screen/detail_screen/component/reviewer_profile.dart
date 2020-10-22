import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/travel_model.dart';

class ReviewerProfile extends StatelessWidget {
  final String profileImage;

  ReviewerProfile({this.profileImage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Align(
      child: CircleAvatar(
        child: profileImage != null
            ? Image(
          image: AssetImage(profileImage),
        )
            : Container(),
        backgroundColor: Colors.grey,
        radius: size.width * 0.05,
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}
