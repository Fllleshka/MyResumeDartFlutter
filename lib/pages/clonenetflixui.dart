import 'package:flutter/material.dart';

class CloneNetFlixUI extends StatelessWidget {
  const CloneNetFlixUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Убираем надпись debug справа сверху
      debugShowCheckedModeBanner: false,
      title: "Flutter Netflix UI",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(),
    );
  }
}
