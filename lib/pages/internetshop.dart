import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/pages/bodyinternetshop.dart';

class InternetShop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyIntShop(),
    );
  }
  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Интернет Магазин',
        style: TextStyle(
          color: kTextColor,
        ),
      ),
      centerTitle: true,
      leading:
      IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: (){

          },
          icon: Icon(
            Icons.shopping_cart,
            color: kTextColor,
          ),
        ),
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
