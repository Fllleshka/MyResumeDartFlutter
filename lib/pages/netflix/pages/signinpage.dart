import 'package:flutter/material.dart';
import 'package:myresume/pages/netflix/dates/dates.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Убираем надпись debug справа сверху
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 50.0,
            leading: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamedAndRemoveUntil('/netflixui', (route) => false);
              },
              child: Image.asset(logoNetflix),
            ),
          ),
        ),
      );
  }
}
