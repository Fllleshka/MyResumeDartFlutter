import 'package:flutter/material.dart';
import 'package:myresume/pages/main_screen.dart';
import 'package:myresume/pages/about.dart';
import 'package:myresume/pages/socialnetworks.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    // Роутер (для навигации по страницам)
    routes: {
      '/': (context) =>const MainScreen(),
      'about': (context) => const About(),
      'socialnetworks': (context) => const SocialContext(),
    },
  ));
}

