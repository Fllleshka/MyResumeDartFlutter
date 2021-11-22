import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
    );
  }
  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      title: Text(
        product.title,
        style: TextStyle(
          color: kTextColor,
        ),
      ),
      centerTitle: true,
      leading:
      IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.home_outlined,
            color: kTextColor,
          ),
          onPressed: (){
            // Переход домой без возможности возврата
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        // Небольшой отступ справа
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
