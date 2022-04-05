import 'package:flutter/material.dart';
import 'package:myresume/pages/components/mainscreencard.dart';

class CloneNetFlixUI extends StatelessWidget {
  const CloneNetFlixUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle;
    final String logoNetflix = 'assets/images/netflix/netflixLogo.png';

    _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    );

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
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/netflix/netFlixBackground.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Opacity(
                  opacity: 0.75,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [Colors.black54, Colors.black87, Colors.black],
                        stops: [0.1, 0.7, 0.8],
                        center: Alignment(0.0, 0.0),
                        focal: Alignment(0.3, -0.2),
                        focalRadius: 0.1,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 400),
                      Text(
                        'Unlimited',
                        style: _textStyle,
                      ),
                      Text(
                        'moves, TV',
                        style: _textStyle,
                      ),
                      Text(
                        'shows & move',
                        style: _textStyle,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Watch anywhere. Cancel anytime.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Тут должн быть скролл.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 370,
                        height: 35,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                              minimumSize: Size.fromWidth(600),
                            ),
                            onPressed: (){},
                            child: Text('GET STARTED')
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
  }
}
