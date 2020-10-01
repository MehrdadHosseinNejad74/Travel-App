import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/travel_model.dart';

class Cover extends StatelessWidget {
  const Cover({
    Key key,
    this.travelModel,
  }) : super(key: key);

  final TravelModel travelModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(travelModel.detailImageUrl))),
    );
  }
}
