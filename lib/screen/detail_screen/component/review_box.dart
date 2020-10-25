import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/screen/detail_screen/component/comment.dart';
import 'package:travel_app/screen/detail_screen/component/reviewer_profile.dart';

class ReviewBox extends StatelessWidget {
  final String profileImage;
  final int rate;
  final String name;
  final String comment;
  final bool left;

  const ReviewBox(
      {this.profileImage,
      this.rate,
      this.name,
      this.comment,
      this.left = true});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      width: size.width,
      child: left == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ReviewerProfile(profileImage: profileImage),
                SizedBox(
                  width: kDefaultPadding / 3,
                ),
                Comment(
                  left: left,
                  name: name,
                  rate: rate,
                  comment: comment,
                )
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Comment(
                  left: left,
                  name: name,
                  rate: rate,
                  comment: comment,
                ),
                SizedBox(
                  width: kDefaultPadding / 3,
                ),
                ReviewerProfile(profileImage: profileImage),
              ],
            ),
    );
  }
}
