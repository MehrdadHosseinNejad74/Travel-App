import 'package:flutter_svg/flutter_svg.dart';

class Tip {
  final SvgPicture icon;
  final String description;
  final String title;

  const Tip({this.icon, this.description, this.title});
}

List<Tip> tips = [
  Tip(
      icon: SvgPicture.asset("assets/images/tips/Date.svg"),
      description: 'Mar - May',
      title: 'Best dates'),
  Tip(
      icon: SvgPicture.asset("assets/images/tips/Currency.svg"),
      description: 'US Dollar (USD)',
      title: 'Currency'),
  Tip(
      icon: SvgPicture.asset("assets/images/tips/Time.svg"),
      description: '-7h UTC / GMT',
      title: 'Time zone')
];
