import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';

import 'component/bottom_sheet.dart';
import 'component/cover.dart';
import 'component/description.dart';
import 'component/glance.dart';

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
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Description(
                        travelModel: widget.travelModel,
                      ),
                      Glance(
                        travelModel: widget.travelModel,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.304,
              right: 15,
              child: ClipOval(
                child: Container(
                    width: size.width * 0.13,
                    height: size.width * 0.13,
                    decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 5),
                              color: Colors.black,
                              blurRadius: 10),
                        ]),
                    child: Icon(
                      Icons.favorite_border,
                      color: kDefaultSecondaryColor,
                    )),
              ),
            )
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
