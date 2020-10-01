import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/travel_model.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.detailModel,
  }) : super(key: key);

  final TravelModel detailModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 10,
      left: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.5,
            child: Text(
              detailModel.description,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: kDefaultTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.035),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 10,
          ),
          Text(
            _getDescription(detailModel),
            style: kDefaultTextStyle.copyWith(
                color: Colors.white.withOpacity(0.75),
                fontWeight: FontWeight.w400,
                fontSize: size.width * 0.035),
          )
        ],
      ),
    );
  }

  String _getDescription(TravelModel detailModel) {
    //Save
    if (detailModel.save != null)
      return 'From \$' + detailModel.price.toStringAsFixed(0);

    //Country
    if (detailModel.country != null) return detailModel.country;

    //Destination
    if (detailModel.destination != null)
      return detailModel.destination.toStringAsFixed(0) + ' km';

    //Default
    return '';
  }
}
