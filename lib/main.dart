import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';
import 'package:myresume/pages/main_screen.dart';
import 'package:myresume/pages/about.dart';
import 'package:myresume/pages/netflix/pages/getstarted.dart';
import 'package:myresume/pages/netflix/pages/pagewithauth.dart';
import 'package:myresume/pages/netflix/pages/privacypage.dart';
import 'package:myresume/pages/netflix/pages/signinpage.dart';
import 'package:myresume/pages/socialnetworks.dart';
import 'package:myresume/pages/tiktok/tiktok.dart';
import 'package:myresume/pages/todo.dart';
import 'package:myresume/pages/internetshop.dart';
import 'package:myresume/pages/netflix/clonenetflixui.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Убираем надпись debug справа сверху
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Первоначальный путь
      initialRoute: '/',
      // Роутер (для навигации по страницам)
      routes: {
        '/': (context) => MainScreen(),
        '/about': (context) => About(),
        '/socialnetworks': (context) => SocialContext(),
        '/todo': (context) => ToDo(),
        '/internetShop': (context) => InternetShop(),
        '/netflixui': (context) => CloneNetFlixUI(),
        '/tiktok': (context) => TikTok(),
        '/pushtiktokprivacypage': (context) => privacyClass(),
        '/signinpage': (context) => SignInPage(),
        '/getstrated': (context) => GetStartedNetflix(),
        '/pagewithauth': (context) => PageWithAuth(),
      },
    );
  }
}

