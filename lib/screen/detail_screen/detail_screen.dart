import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';

import 'component/bottom_sheet.dart';
import 'component/cover.dart';

class DetailScreen extends StatefulWidget {
  final DetailModel travelModel;

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
        body: SingleChildScrollView(
          child: Column(
            children: [Cover(travelModel: widget.travelModel)],
          ),
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
