import 'dart:ui';

class VisitCoverModel {
  final String imageUrl;
  final Color backgroundColor;
  final String city;
  final String country;

  const VisitCoverModel(
      {this.imageUrl, this.backgroundColor, this.city, this.country});

}

const List<VisitCoverModel> visitCovers = [

  VisitCoverModel(imageUrl: 'assets/images/visit/New York.png',
      backgroundColor: Color(0xffBE0014),
      city: 'New York',
      country: 'United States'),
  VisitCoverModel(imageUrl: 'assets/images/visit/Paris.png',
      backgroundColor: Color(0xff2D3090),
      city: 'Paris',
      country: 'France'),
  VisitCoverModel(imageUrl: 'assets/images/visit/Rome.png',
      backgroundColor: Color(0xff00781E),
      city: 'Rome',
      country: 'Italy'),

];


