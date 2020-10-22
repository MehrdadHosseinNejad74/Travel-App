import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/constant.dart';

class Tabs extends StatefulWidget {
  final Function onClick;
  final int selectedTab;
  final List<String> tabs;

  const Tabs({Key key, @required this.onClick, @required this.selectedTab, @required this.tabs})
      : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.06,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  widget.onClick(index);
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0, 0, kDefaultPadding, kDefaultPadding / 5),
                  child: Text(
                    this.widget.tabs[index],
                    style: kDefaultTextStyle.copyWith(
                        color: kDefaultSecondaryColor,
                        fontSize: size.width * 0.040),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.07,
                height: size.width * 0.005,
                color: widget.selectedTab == index
                    ? kDefaultSecondaryColor
                    : Colors.transparent,
              )
            ],
          );
        },
        itemCount: this.widget.tabs.length,
      ),
    );
  }
}
