import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class GetStartedNetflix extends StatelessWidget {
  const GetStartedNetflix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String logoNetflix = 'assets/images/netflix/netflixLogo.png';
    String inputlogin = '';
    String inputpassword = '';
    String inputemail = '';
    TextStyle _labelstyle = TextStyle (
        color: Colors.white
    );

    InputDecoration decorationinput(String text, String suffix){
      InputDecoration result;
      result = InputDecoration(
          labelText: text,
          suffixText: suffix,
          suffixStyle: _labelstyle,
          labelStyle: _labelstyle,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
              width: 3.0,
            ),
          )
      );
      return result;
    }

    void _registration(String login, String pass, String email){
      if (login == 'netflix')
        if (pass == 'netflix')
          if (email == 'netflix@gmail.com')
            {
              new Future.delayed(
                  Duration(seconds: 5),
                  (){
                    Navigator.pop(context);
                  }
              );
              print('Email check');
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Вы успешно зарегистрировались!'),
                  content: Image.asset('assets/gifs/netflix-netflix-logo.gif'),
                ),
              );
            }
    }

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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/netflix/netFlixBackground1.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Opacity(
              opacity: 0.9,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.black87
                      ]
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Логин
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    onChanged: (text){
                      inputlogin = text;
                    },
                    style: _labelstyle,
                    decoration: decorationinput('username', 'netflix'),
                  ),
                ),
                SizedBox(height: 20),
                // Пароль
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    onChanged: (text){
                      inputpassword = text;
                    },
                    style: _labelstyle,
                    decoration: decorationinput('password', 'netflix'),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20),
                // Email
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    onChanged: (text){
                      inputemail = text;
                    },
                    style: _labelstyle,
                    decoration: decorationinput('email', 'netflix@gmail.com'),
                  ),
                ),
                SizedBox(height: 20),
                // Кнопка
                Container(
                  width: 370,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 4
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: (){
                      _registration(inputlogin, inputpassword, inputemail);
                    },
                    child: Text('SIGN UP', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
