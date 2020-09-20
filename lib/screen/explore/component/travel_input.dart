import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';

class TravelInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      elevation: 10,
      shadowColor: Colors.black45,
      borderRadius: BorderRadius.circular(7),
      child: TextField(
        minLines: 1,
        maxLines: 1,
        style: kDefaultTextStyle.copyWith(fontSize: size.width * 0.05),
        decoration: InputDecoration(
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white)),
            contentPadding: EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintStyle: kDefaultTextStyle.copyWith(
              color: Color(0xffBCBCBC),
              fontSize: size.width * 0.04,
            ),
            hintText: 'Where do you like to go ?',
            prefixIcon: Icon(Icons.search, color: Color(0xffBCBCBC)),
            fillColor: Colors.white),
        showCursor: false,
      ),
    );
  }
}
