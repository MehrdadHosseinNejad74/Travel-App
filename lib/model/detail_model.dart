class DetailModel {
  final String imageUrl;
  final String description;
  final double price;
  final String country;
  final double save;
  final double destination;
  final String detailImageUrl;

  const DetailModel(
      {this.detailImageUrl,
      this.destination,
      this.save,
      this.imageUrl,
      this.description,
      this.price,
      this.country});
}

//Explore Models
const List<DetailModel> specialOffers = [
  DetailModel(
      imageUrl: 'assets/images/offers/losangeles.png',
      description: 'Los Angeles Sunset',
      save: 20,
      detailImageUrl: 'assets/images/detailcover/losangeles.png',
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

//Nearby Models
const List<DetailModel> tours = [
  DetailModel(
      imageUrl: 'assets/images/nearby/tours.png',
      description: 'Get to Know BC',
      price: 2700),
];

const List<DetailModel> nearbyNature = [
  DetailModel(
      imageUrl: 'assets/images/nearby/backcountry.png',
      description: 'Backcountry',
      destination: 37),
  DetailModel(
      imageUrl: 'assets/images/nearby/fjord.png',
      description: 'Fjord',
      destination: 92)
];

const List<DetailModel> nearbyLandmarks = [
  DetailModel(
      imageUrl: 'assets/images/nearby/christ.png',
      description: 'Christ Church Cathedral',
      destination: 5),
  DetailModel(
      imageUrl: 'assets/images/nearby/thunderbird.png',
      description: 'Thunderbird Park',
      destination: 13)
];

const List<DetailModel> localFood = [
  DetailModel(
      imageUrl: 'assets/images/nearby/bar.png',
      description: 'Hy’s Steakhouse & Cocktail Bar',
      destination: 4),
  DetailModel(
      imageUrl: 'assets/images/nearby/chambar.png',
      description: 'Chambar',
      destination: 3)
];
