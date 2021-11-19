import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';

class BodyIntShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories>{
  List<String> categories = ["Офисные сумки","Поясные сумки","Тоут сумки","Хит 2000"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategoty(index),
      ),
    );
  }
  Widget buildCategoty (int index) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Text(
        categories[index],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: kTextColor,
        ),
      ),
    );
  }
}

