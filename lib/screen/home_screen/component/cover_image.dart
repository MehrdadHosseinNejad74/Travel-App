import 'package:flutter/cupertino.dart';
import 'package:travel_app/model/travel_model.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    Key key,
    @required this.detailModel,
  }) : super(key: key);

  final TravelModel detailModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              detailModel.imageUrl,
            ),
          )),
    );
  }
}