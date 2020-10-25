import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/screen/detail_screen/component/star_rate.dart';

class Comment extends StatelessWidget {
  final int rate;
  final String name;
  final String comment;
  final bool left;

  const Comment(
      {Key key, this.rate = 1, this.name = "", this.comment, this.left = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      decoration: BoxDecoration(
          color: left == true
              ? Color.fromRGBO(229, 229, 229, 1)
              : Color(0xff454545),
          borderRadius: left == true
              ? BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(15))
              : BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(0))),
      padding: EdgeInsets.all(kDefaultPadding / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          name != null
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: kDefaultTextStyle.copyWith(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w700,
                        color: left == true
                            ? Colors.black
                            : Colors.white.withOpacity(0.8)),
                  ),
                )
              : SizedBox(
                  height: 0,
                ),
          rate != null
              ? Star(
                  left: left,
                  like: rate,
                  dislike: 5 - rate,
                )
              : SizedBox(
                  height: 0,
                ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              comment,
              style: kDefaultTextStyle.copyWith(
                  fontSize: size.width * 0.033,
                  color: left == true
                      ? Colors.black
                      : Colors.white.withOpacity(0.8)),
              overflow: TextOverflow.fade,
            ),
          )
        ],
      ),
    );
  }
}
