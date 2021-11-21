import 'package:flutter/material.dart';
import 'package:myresume/models/product.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/pages/categoriesinternetshop.dart';
import 'package:myresume/pages/itemcardinternetshop.dart';

class BodyIntShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
          child: Text('Девушки',
                style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                  ),
                ),
            ),
        ),
      ],
    );
  }
}
