import 'package:flutter/material.dart';
import 'package:myresume/pages/netflix/dates/dates.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  InputDecoration _inputDecoration;
  String inputlogin = ' ';
  String inputpassword = ' ';

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

  void _testinfo(String login, String password){
    if(login == netflix){
      if(password == netflix){
        Navigator.pop(context);
      }
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
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      onChanged: (text){
                        inputpassword = text;
                      },
                      style: _labelstyle,
                      decoration: decorationinput('username', netflix),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      onChanged: (text){
                        inputlogin = text;
                      },
                      style: _labelstyle,
                      decoration: decorationinput('password', netflix),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
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
                        _testinfo(inputlogin, inputpassword);
                      },
                      child: Text('LOGIN', style: TextStyle(
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
