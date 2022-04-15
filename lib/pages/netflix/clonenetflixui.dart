import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:myresume/pages/components/mainscreencard.dart';

class CloneNetFlixUI extends StatelessWidget {
  const CloneNetFlixUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String logoNetflix = 'assets/images/netflix/netflixLogo.png';
    var firstScreen = ['Unlimited', 'moves, TV', 'shows & move', 'Watch anywhere. Cancel anytime.'];
    var secondScreen = ['Безлимитно', 'фильмы, ТВ', 'шоу и сериалы', 'Смотри везде. Прерывай в любой момент.'];
    var thirdScreen = ['Unbegrenzt', 'bewegt sich, Fernsehen', 'zeigt & bewegt', 'Überall ansehen. Jederzeit kündbar.'];
    var fourthScreen = ['Illimité', 'déménagement, télé', 'montre & bouge', "Regardez n'importe où. Annulez à tout moment."];
    var defaultScreen = [' ', ' ', ' ', ' '];

    TextStyle _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    );

    Align _outputinfo(int number,var info){
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 400),
            Text(
              info[0],
              style: _textStyle,
            ),
            Text(
              info[1],
              style: _textStyle,
            ),
            Text(
              info[2],
              style: _textStyle,
            ),
            SizedBox(height: 20),
            Text(
              info[3],
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 370,
              height: 35,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    minimumSize: Size.fromWidth(600),
                  ),
                  onPressed: () {
                    OpenProject('PushNetFlixGetStarted',context);
                  },
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
              ),
            )
          ],
        ),
      );
    }

    Align _information(int info){
      switch(info){
        case 1:
          return _outputinfo(info, firstScreen);
        case 2:
          return _outputinfo(info, secondScreen);
        case 3:
          return _outputinfo(info, thirdScreen);
        case 4:
          return _outputinfo(info, fourthScreen);
        default:
          return _outputinfo(info, defaultScreen);
      }
    }

    Stack _background(String asset, int index){
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(asset),
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
          _information(index),
        ],
      );
    }

    var backgroundsList = [
      _background('assets/images/netflix/netFlixBackground1.png', 1),
      _background('assets/images/netflix/netFlixBackground2.png', 2),
      _background('assets/images/netflix/netFlixBackground3.png', 3),
      _background('assets/images/netflix/netFlixBackground4.png', 4),
    ];

    return MaterialApp(
      //Убираем надпись debug справа сверху
      debugShowCheckedModeBanner: false,
      title: "Flutter Netflix UI",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
          actions: <Widget>[
            TextButton(
              onPressed: (){OpenProject('PushTikTokPrivacyPage',context);},
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,
                )
              ),
              child: Text('PRIVACY', style: TextStyle(color: Colors.white),),
            ),
            TextButton(
              onPressed: (){OpenProject('SignInPage',context);},
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  )
              ),
              child: Text('SIGN IN', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 30)
          ],
        ),
        body: Stack(
              children: <Widget>[
                Swiper(
                  itemCount: backgroundsList.length,
                  itemBuilder: (BuildContext context, int index){
                    return backgroundsList[index];
                  },
                  pagination: SwiperPagination(
                    margin: EdgeInsets.only(bottom: 80)
                    ),
                ),
              ],
            )
        ),
      );
  }
}
