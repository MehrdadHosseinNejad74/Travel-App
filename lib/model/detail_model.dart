class DetailModel {
  final String imageUrl;
  final String description;
  final double price;

  const DetailModel({this.imageUrl, this.description, this.price});
}

const List<DetailModel> specialOffers = [
  DetailModel(
      imageUrl: 'assets/images/offers/losangeles.png',
      description: 'Los Angeles Sunset',
      price: 2100),
  DetailModel(
      imageUrl: 'assets/images/offers/bigsur.png',
      description: 'Big Sur Coast',
      price: 2400)
];

const List<DetailModel> upcomingTours = [
  DetailModel(
      imageUrl: 'assets/images/upcoming/maldives.png',
      description: 'Maldives Summer',
      price: 2100),
  DetailModel(
      imageUrl: 'assets/images/upcoming/venice.png',
      description: 'Venice & Around',
      price: 2400)
];

//
//const List<DetailModel> specialOffers = [
//  DetailModel(
//      imageUrl: 'assets/images/offers/losangeles.png',
//      description: 'Los Angeles Sunset',
//      price: 2100),
//  DetailModel(
//      imageUrl: 'assets/images/offers/bigsur.png',
//      description: 'Big Sur Coast',
//      price: 2400)
//];
//
//
//const List<DetailModel> specialOffers = [
//  DetailModel(
//      imageUrl: 'assets/images/offers/losangeles.png',
//      description: 'Los Angeles Sunset',
//      price: 2100),
//  DetailModel(
//      imageUrl: 'assets/images/offers/bigsur.png',
//      description: 'Big Sur Coast',
//      price: 2400)
//];
