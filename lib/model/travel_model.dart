class TravelModel {
  final String imageUrl;
  final String description;
  final double price;
  final String country;
  final double save;
  final int rate;
  final double destination;
  final String detailImageUrl;
  final String glance;

  const TravelModel(
      {this.glance,
      this.rate,
      this.detailImageUrl,
      this.destination,
      this.save,
      this.imageUrl,
      this.description,
      this.price,
      this.country});
}

//Explore Models
const List<TravelModel> specialOffers = [
  TravelModel(
      imageUrl: 'assets/images/offers/losangeles.png',
      description: 'Los Angeles Sunset',
      save: 20,
      rate: 3,
      glance:
          "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 875,
      country: 'United States',
      detailImageUrl: 'assets/images/detailcover/losangeles.png',
      price: 2100),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/offers/bigsur.png',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      description: 'Big Sur Coast',
      destination: 875,
      save: 10,
      price: 2400)
];

const List<TravelModel> upcomingTours = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/upcoming/maldives.png',
      description: 'Maldives Summer',
      destination: 875,
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      country: 'United States',
      price: 2100),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/upcoming/venice.png',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      description: 'Venice & Around',
      country: 'United States',
      destination: 875,
      price: 2400)
];

const List<TravelModel> nature = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nature/niagara.png',
      description: 'Niagara Falls',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 875,
      country: 'Canada'),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nature/nationalpark.png',
      description: 'Niagara Falls',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 875,
      country: 'United States')
];

const List<TravelModel> landmarks = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/landmark/eiffel.png',
      description: 'The Eiffel Tower',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 875,
      country: 'France'),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/landmark/liberty.png',
      description: 'The Statue of Liberty',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 875,
      country: 'United States')
];

//Nearby Models
const List<TravelModel> tours = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/tours.png',
      description: 'Get to Know BC',
      destination: 875,
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      country: 'United States',
      price: 2700),
];

const List<TravelModel> nearbyNature = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/backcountry.png',
      description: 'Backcountry',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 37),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/fjord.png',
      description: 'Fjord',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      country: 'United States',
      destination: 92)
];

const List<TravelModel> nearbyLandmarks = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/christ.png',
      description: 'Christ Church Cathedral',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 5),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/thunderbird.png',
      description: 'Thunderbird Park',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 13)
];

const List<TravelModel> localFood = [
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/bar.png',
      description: 'Hy’s Steakhouse & Cocktail Bar',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 4),
  TravelModel(
      rate: 3,
      imageUrl: 'assets/images/nearby/chambar.png',
      description: 'Chambar',
      country: 'United States',
      glance:
      "See The Best Of SoCal And Book Your Los Angeles Tours With Surf City Tours Today! Free Pickup & Drop-Offs. Satisfaction Guaranteed. Destinations: Hollywood Sign, Movie Studios, Filming Locations, Celebrity Homes, Crime Scenes, Beverly Hills, Malibu, Sunset Strip.",
      destination: 3)
];
