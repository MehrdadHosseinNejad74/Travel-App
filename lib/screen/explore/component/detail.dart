import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/detail_model.dart';

import 'dark_gradient.dart';

class Details extends StatelessWidget {
  final String header;
  final List<DetailModel> detailModel;

  const Details({
    Key key,
    @required this.header,
    @required this.detailModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            header,
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Center(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, kDefaultPadding / 1.5,
                          kDefaultPadding, kDefaultPadding),
                      width: size.width * 0.6,
                      height: size.height * 0.35,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    detailModel[index].imageUrl,
                                  ),
                                )),
                          ),
                          DarkGradient(
                            radius: 10,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  detailModel[index].description,
                                  style: kDefaultTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.035),
                                ),
                                SizedBox(
                                  height: kDefaultPadding / 10,
                                ),
                                Text(
                                  'From ' +
                                      '\$' +
                                      detailModel[index].price.toStringAsFixed(0),
                                  style: kDefaultTextStyle.copyWith(
                                      color: Colors.white.withOpacity(0.75),
                                      fontWeight: FontWeight.w100,
                                      fontSize: size.width * 0.035),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: detailModel.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
