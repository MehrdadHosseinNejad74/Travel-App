import 'package:flutter/cupertino.dart';
import 'package:travel_app/constant/constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.header,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text(
      header,
      style: kDefaultTextStyle.copyWith(
          fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
    );
  }
}
