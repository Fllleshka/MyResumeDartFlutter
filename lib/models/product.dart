import 'package:flutter/material.dart';

String OfficeText = "Офисная сумочка - это необходимая жизненная принадлежность каждой женщины, которая работает вне дома. Она должна быть достаточно вместительной для того чтобы в нее вместились все рабочие документы и предпочтительно чтобы у нее были отдельные кармашки для таких важных предметов, как мобильный телефон и ключи от машины, чтобы вам не приходилось их подолгу разыскивать.";
String ToutBagText = "Сумка Тоут - это просторная широкая сумка, которая служит для переноски всевозможных предметов, таких, как книги, косметика, всевозможные инструменты, наконец, одежда. Фактически прообразом этой сумки послужила обычная хозяйственная сумка, а поэтому, тоут может использоваться для чего угодно и как угодно, до тех пор, пока она достаточно крепка и находится в нормальном состоянии.";
String FannyPackText = "Поясная сумка является в некотором роде разновидностью ременной сумки. Поясную сумку обычно носят на животе, или же, сдвигая ее в одну, либо в другую сторону. Сумки меньшего размера часто носят на талии, в то время как большие поясные сумки обычно свободно болтаются на бедрах или чуть ниже живота. ";
String BowlingBagText = "Сумка Боулинг, в полном соответствии со своим названием, первоначально предназначалась для переноски шаров для боулинга. На подиумах высокой моды она появилась несколько позднее – в 70-х годах прошлого столетия. Это объемная вместительная сумка из мягких материалов, которая явилась символом своей эпохи и предназначалась для женщин, ведущих активный образ жизни, занимающихся спортом. ";

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
    description: OfficeText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),),
  Product(
    id: 2,
    title: "Поясная сумка",
    head_title: "Модная молодёжная сумка",
    catig: "Пояс",
    price: 9500,
    size: 8,
    description: FannyPackText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),),
  Product(
      id: 3,
      title: "Тоут сумка",
      head_title: "Сумка на каждый день",
      catig: "Тоут",
      price: 14700,
      size: 10,
      description: ToutBagText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Боулинг",
      head_title: "Сумка Боулинг",
      catig: "Боулинг",
      price: 11500,
      size: 11,
      description: BowlingBagText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Офисная сумка",
      head_title: "Модная аристократичная сумка",
      catig: "Офис",
      price: 14900,
      size: 12,
      description: OfficeText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Офисная сумка",
    head_title: "Модная аристократичная сумка",
    catig: "Офис",
    price: 15400,
    size: 12,
    description: OfficeText,
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
    description: OfficeText,
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
    description: ToutBagText,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
];
