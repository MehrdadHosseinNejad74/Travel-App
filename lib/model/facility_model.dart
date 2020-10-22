import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facility {
  final Icon icon;
  final String description;
  final String title;
  final double price;

  const Facility({this.icon, this.description, this.title, this.price});
}

List<Facility> facilities = [
  Facility(
      icon: Icon(
        Icons.flight,
        color: Color(0xffBCBCBC),
      ),
      description: 'Lufthansa',
      title: 'Flights',
      price: 700),

  Facility(
      icon: Icon(
        Icons.directions_car,
        color: Color(0xffBCBCBC),
      ),
      description: 'Hot wheels',
      title: 'Car rental',
      price: 400),


  Facility(
      icon: Icon(
        Icons.hotel,
        color: Color(0xffBCBCBC),
      ),
      description: 'Car rental',
      title: 'Hotel',
      price: 700),
];
