import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body:
          Column(
            children:[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Column(
                            children: <Widget>[
                              // Список дел
                              Container(
                                padding: EdgeInsets.all(kDefaultPaddin),
                                height: 180,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/todolist.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                                child: Text(
                                  'Список дел',
                                  style: TextStyle(
                                      color: kTextColor
                                  ),),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              // Магазинная вывеска
                              Container(
                                padding: EdgeInsets.all(kDefaultPaddin),
                                height: 180,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/internetshop.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                                child: Text(
                                  'Интернет магазин',
                                  style: TextStyle(
                                      color: kTextColor
                                  ),),
                              ),
                            ],
                          )
                        ]
                    ),
                ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: <Widget>[
                          // Список дел
                          Container(
                            padding: EdgeInsets.all(kDefaultPaddin),
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset('assets/images/herokenny.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                            child: Text(
                              '???????????',
                              style: TextStyle(
                                  color: kTextColor
                              ),),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          // Магазинная вывеска
                          Container(
                            padding: EdgeInsets.all(kDefaultPaddin),
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset('assets/images/herokenny.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                            child: Text(
                              '???????????',
                              style: TextStyle(
                                  color: kTextColor
                              ),),
                          ),
                        ],
                      )
                    ]
                ),
              ),
          ])
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Главный экран',
        style: TextStyle(
          color: kTextColor,
        ),
      ),
      centerTitle: true,
      /*leading:
      IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),*/
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