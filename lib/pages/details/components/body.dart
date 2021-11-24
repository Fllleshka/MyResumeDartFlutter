import 'package:flutter/material.dart';
import 'package:myresume/models/product.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/pages/details/components/AddToCard.dart';
import 'package:myresume/pages/details/components/ColorAndSize.dart';
import 'package:myresume/pages/details/components/CounterWithFavBtn.dart';
import 'package:myresume/pages/details/components/description.dart';
import 'package:myresume/pages/details/components/producttitlewithimage.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.06,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      AddToCard(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}