import 'dart:ui';

List<Shoes> products = [
  Shoes(colors: [Color.fromRGBO(237, 153, 155, 1), Color.fromRGBO(192, 42, 32, 1)], name: 'Nike Air Vapor', price: 43.40, shoeUrl: 'assets/images/nike1.png'),
  Shoes(colors: [Color.fromRGBO(123, 247, 248, 1), Color.fromRGBO(21, 134, 135, 1)], name: 'Nike Joyride Run', price: 81.20, shoeUrl: 'assets/images/nike4.png'),
  Shoes(colors: [ Color.fromRGBO(96, 245, 232, 1), Color.fromRGBO(113, 114, 253, 1)], name: 'Nike X Undercover', price: 130.99, shoeUrl: 'assets/images/nike1.png'),
  Shoes(colors: [Color.fromRGBO(254, 238, 180, 1), Color.fromRGBO(247, 70, 110, 1)], name: 'LeBron xVI Low', price: 155.00, shoeUrl: 'assets/images/nike4.png')
];

class Shoes {
  final List<Color> colors;
  final String name;
  final double price;
  final String shoeUrl;

  Shoes({this.colors, this.name, this.price, this.shoeUrl});
}