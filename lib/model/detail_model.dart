class DetailModel {
  final String imageUrl;
  final String description;
  final double price;
  final String country;
  final double save;

  const DetailModel(
      {this.save, this.imageUrl, this.description, this.price, this.country});
}

const List<DetailModel> specialOffers = [
  DetailModel(
      imageUrl: 'assets/images/offers/losangeles.png',
      description: 'Los Angeles Sunset',
      save: 20,
      price: 2100),
  DetailModel(
      imageUrl: 'assets/images/offers/bigsur.png',
      description: 'Big Sur Coast',
      save: 10,
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

const List<DetailModel> nature = [
  DetailModel(
      imageUrl: 'assets/images/nature/niagara.png',
      description: 'Niagara Falls',
      country: 'Canada'),
  DetailModel(
      imageUrl: 'assets/images/nature/nationalpark.png',
      description: 'Niagara Falls',
      country: 'United States')
];

const List<DetailModel> landmarks = [
  DetailModel(
      imageUrl: 'assets/images/landmark/eiffel.png',
      description: 'The Eiffel Tower',
      country: 'France'),
  DetailModel(
      imageUrl: 'assets/images/landmark/liberty.png',
      description: 'The Statue of Liberty',
      country: 'United States')
];
