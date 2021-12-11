import 'package:flutter/material.dart';
import 'shop_model.dart';

List<Shop> _Shop_list = [
  Shop(
    name: "Keyboard",
    image: "assets/images/keyboard.jpg",
    backgroundColor: Color(0xff65C5B2),
    price: 5,
  ),
  Shop(
    name: "saxophone",
    image: "assets/images/keyboard.jpg",
    backgroundColor: Color(0xffFFAEF2),
    price: 11,
  ),
  Shop(
    name: "mixer sound system",
    image: "assets/images/key.jpg",
    backgroundColor: Color(0xffFF9839),
    price: 7,
  ),
  Shop(
    name: "Chair",
    image: "assets/images/key.jpg",
    backgroundColor: Color(0xffB68456),
    price: 4,
  ),
  Shop(
    name: "Keyboard",
    image: "assets/images/keyboard.jpg",
    backgroundColor: Color(0xffE74343),
    price: 9,
  ),
  Shop(
    name: "Keyboard",
    image: "assets/images/keyboard.jpg",
    backgroundColor: Color(0xff56B670),
    price: 12,
  ),
  Shop(
    name: "Keyboard",
    image: "assets/images/key.jpg",
    backgroundColor: Color(0xff8D5FDC),
    price: 8,
  ),
  Shop(
    name: "Keyboard",
    image: "assets/images/key.jpg",
    backgroundColor: Color(0xff5FBFDC),
    price: 15,
  ),
];

List<Shop> get Shop_list {
  return [..._Shop_list];
}
