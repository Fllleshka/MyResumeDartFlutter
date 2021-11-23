import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/models/product.dart';
import 'package:myresume/pages/details/components/body.dart';

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
      body: Body(product: product,),
    );
  }
  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
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
            onPressed: (){

            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
        ),
        IconButton(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
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
