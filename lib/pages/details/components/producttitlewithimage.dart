import 'package:flutter/material.dart';
import 'package:myresume/models/product.dart';
import 'package:myresume/pages/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(product.head_title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(product.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Цена\n",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    TextSpan(text: "\₽${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
