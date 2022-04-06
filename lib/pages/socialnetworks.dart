import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:myresume/pages/netflix/dates/dates.dart';

class SocialContext extends StatelessWidget {
  const SocialContext({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Stack _background(String asset){
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
        ],
      );
    }
    String showPerson(){
      String result = '';
      int i = 0;
      while (i < privacylist.length) {
        result = result + privacylist[i] + '\n';
        i++;
      }
      return result;
    }

    var backgroundsList = [
      _background('assets/images/netflix/netFlixBackground1.png'),
      _background('assets/images/netflix/netFlixBackground2.png'),
    ];

    final imagesList = [
      'https://cdn.pixabay.com/photo/2022/03/22/18/24/flowers-7085710_960_720.jpg',
      'https://cdn.pixabay.com/photo/2022/03/31/11/28/insect-7102809_960_720.jpg',
      'https://cdn.pixabay.com/photo/2022/03/26/10/45/frankfurt-7092736_960_720.jpg',
      'https://cdn.pixabay.com/photo/2022/03/30/11/12/dog-7101015_960_720.jpg',
    ];

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
          children: <Widget>[
            Swiper(
              itemCount: backgroundsList.length,
              itemBuilder: (BuildContext context, int index){
                return backgroundsList[index];
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text('Положение о конфиденциальности',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                      height: 480,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white54,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(showPerson(),
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 380,
                    //height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.redAccent,
                          width: 4
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('ACCEPT', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
