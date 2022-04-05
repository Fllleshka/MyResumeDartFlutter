import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';

void OpenProject(String nameProject, context){
  switch(nameProject) {
    case 'ToDo':
      {
        Navigator.pushNamed(context, '/todo');
        print('Вызов функции TODO: $nameProject',);
        break;
      }
    case 'InternetShop':
      {
        Navigator.pushNamed(context, '/internetShop');
        print('Вызов функции INTERNETSHOP: $nameProject',);
        break;
      }
    case 'SocialNetWorks':
      {
        Navigator.pushNamed(context, '/socialnetworks');
        print('Вызов функции SOCIALNETWORKS: $nameProject',);
        break;
      }
    case 'CloneNetflix':
      {
        Navigator.pushNamed(context, '/netflixui');
        print('Вызов функции CLONENETFLIXUI: $nameProject',);
        break;
      }
    case 'CloneTikTok':
      {
        Navigator.pushNamed(context, '/tiktok');
        print('Вызов функции CLONETIKTOK: $nameProject',);
        break;
      }
    case 'PushTikTokPrivacyPage':
      {
        Navigator.pushNamed(context, '/pushtiktokprivacypage');
        print('Вызов функции PushTikTokPrivacyPage: $nameProject',);
        break;
      }
    case 'SignInPage':
      {
        Navigator.pushNamed(context, '/signinpage');
        print('Вызов функции SignInPage: $nameProject',);
        break;
      }
    default:
      {
        print('Вызов функции: $nameProject',);
        break;
      }
  }
}

class MainScreenCard extends StatelessWidget {
  final String nameProject;
  final String assetImage;
  final String titleProject;
  // Конструктор класса
  const MainScreenCard({
    Key? key,
    required this.nameProject,
    required this.assetImage,
    required this.titleProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Список дел
        GestureDetector(
          onTap: (){
            OpenProject(nameProject, context);
          },
          child: Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(assetImage),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            titleProject,
            style: TextStyle(
                color: kTextColor
            ),),
        ),
      ],
    );
  }
}
