import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/pages/components/mainscreencard.dart';

class ListViewColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Список дел
                MainScreenCard(
                  nameProject: 'ToDo',
                  assetImage: 'assets/images/todolist.png',
                  titleProject: 'Список дел',
                ),
                // Магазинная вывеска
                MainScreenCard(
                    nameProject: 'InternetShop',
                    assetImage: 'assets/images/internetshop.png',
                    titleProject: 'Интернет магазин'
                )
              ]
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Социальные сети
                MainScreenCard(
                    nameProject: 'SocialNetWorks',
                    assetImage: 'assets/images/socialnetworkingapps.png',
                    titleProject: 'Социальные сети'
                ),
                // Колон тиктока
                MainScreenCard(
                    nameProject: 'CloneTikTok',
                    assetImage: 'assets/images/tiktoklogo.png',
                    titleProject: 'Clone TikTok'
                ),
              ]
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Клон нетфликса
                MainScreenCard(
                    nameProject: 'CloneNetflix',
                    assetImage: 'assets/images/clonenetflixlogo.png',
                    titleProject: 'Клон Netflix'
                ),
                // Магазинная вывеска
                MainScreenCard(
                    nameProject: '???',
                    assetImage: 'assets/images/herokenny.png',
                    titleProject: 'В разработке'
                )
              ]
          ),
        ),
      ],
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListViewColumn()
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