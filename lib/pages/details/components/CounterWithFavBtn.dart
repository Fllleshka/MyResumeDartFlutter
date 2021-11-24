import 'package:flutter/material.dart';
import 'package:myresume/pages/details/components/cartCouner.dart';

Row CounterWithFavBtn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CartCounter(),
      Container(
        padding: EdgeInsets.all(4),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: Color(0xFFFF6464),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      )
    ],
  );
}