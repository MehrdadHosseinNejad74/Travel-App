import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';

import 'component/bottom_sheet.dart';
import 'component/cover.dart';
import 'component/description.dart';
import 'component/facilities.dart';
import 'component/favorite_icon.dart';
import 'component/glance.dart';
import 'component/reviews.dart';
import 'component/shots.dart';
import 'component/tips.dart';

class DetailScreen extends StatefulWidget {
  final TravelModel travelModel;

  const DetailScreen({Key key, @required this.travelModel}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomSheet: CustomBottomSheet(travelModel: widget.travelModel),
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(top: 0, child: Cover(travelModel: widget.travelModel)),
            Positioned(
              top: size.height * 0.34,
              child: Container(
                height: size.height * 0.65,
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kDefaultPadding),
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Description(
                        travelModel: widget.travelModel,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Glance(
                        travelModel: widget.travelModel,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Tips(),
                      Facilities(
                        travelModel: this.widget.travelModel,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Shots(),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Reviews(),
                      SizedBox(
                        height: kDefaultPadding * 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FavoriteIcon()
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: kDefaultPadding),
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
          ),
        ),
      ],
      elevation: 0,
    );
  }
}
