import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';
import 'package:travel_app/model/visit_cover_model.dart';

class WorthVisiting extends StatelessWidget {
  const WorthVisiting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Worth visiting',
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(
                      0, kDefaultPadding / 1.5, kDefaultPadding, kDefaultPadding),
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      color: visitCovers[index].backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(kDefaultPadding / 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  visitCovers[index].imageUrl,
                                ),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              visitCovers[index].city,
                              style: kDefaultTextStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.035),
                            ),
                            SizedBox(
                              height: kDefaultPadding / 10,
                            ),
                            Text(
                              visitCovers[index].country,
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
                );
              },
              itemCount: visitCovers.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
