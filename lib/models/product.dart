import 'package:flutter/material.dart';

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

class Product {
  final String image, title, description, catig, head_title;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.head_title,
    required this.price,
    required this.description,
    required this.catig,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Офисная сумка",
    head_title: "Модная аристократичная сумка",
    catig: "Офис",
    price: 12500,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),),
  Product(
    id: 2,
    title: "Поясная сумка",
    head_title: "Модная молодёжная сумка",
    catig: "Пояс",
    price: 9500,
    size: 8,
    description: dummyText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),),
  Product(
      id: 3,
      title: "Тоут сумка",
      head_title: "Сумка на каждый день",
      catig: "Тоут",
      price: 14700,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Хит 2000",
      head_title: "Нестареющая классика",
      catig: "Хит 2000",
      price: 11500,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Офисная сумка",
      head_title: "Модная аристократичная сумка",
      catig: "Офис",
      price: 14900,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Офисная сумка",
    head_title: "Модная аристократичная сумка",
    catig: "Офис",
    price: 15400,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "Офисная сумка",
    head_title: "Модная аристократичная сумка",
    catig: "Офис",
    price: 12500,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 8,
    title: "Тоут сумка",
    head_title: "Сумка на каждый день",
    catig: "Тоут",
    price: 14700,
    size: 10,
    description: dummyText,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
];
