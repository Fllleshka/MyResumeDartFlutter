import 'package:flutter/material.dart';

class BottomSelection extends StatelessWidget {
  const BottomSelection({Key? key}) : super(key: key);
  static const double NavigationIconsSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Иконка домой
          Icon(
            Icons.home,
            color: Colors.white,
            size: 20.0,
          ),
          // Иконка поиска
          Icon(
            Icons.search,
            color: Colors.white,
            size: 20.0,
          ),
          // Кнопка добавления
          _customCreateIcon,
          // Иконка сообщения
          Icon(
            Icons.message,
            color: Colors.white,
            size: 20.0,
          ),
          // Иконка информации о профиле
          Icon(
            Icons.info,
            color: Colors.white,
            size: 20.0,
          ),
        ]
    );
  }

  Widget get _customCreateIcon => Container(
    width: 45.0,
    height: 27.0,
    child: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10.0),
          width: 38.0,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 45, 108),
              borderRadius: BorderRadius.circular(7.0)
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          width: 38.0,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 211, 234),
              borderRadius: BorderRadius.circular(7.0)
          ),
        ),
        Container(
          margin: EdgeInsets.all(4),
          width: 38.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7.0)
          ),
          child: Icon(Icons.add, size: 20.0),
        ),
      ],
    ),
  );
}
