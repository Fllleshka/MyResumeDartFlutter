import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:myresume/pages/netflix/pages/widgets/castomappbar.dart';

class PageWithAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ScrollController _scrollController;
    final Size screenSize = MediaQuery.of(context).size;
    final TextStyle _textstyleforgenre = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    var imagesForDecoration = [
      'assets/images/netflix/spiderman/1.jpg',
      'assets/images/netflix/spiderman/2.jpg',
      'assets/images/netflix/spiderman/3.jpg',
      'assets/images/netflix/spiderman/4.jpg',
    ];

    Container _poster (String asset){
      return Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      );
    }
    GestureDetector _ontapposter (String asset){
      return GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                      contentPadding: EdgeInsets.all(0),
                      content:
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image:  DecorationImage(
                            image: AssetImage(asset),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                  );
            },
          );
        },
        child: _poster(asset),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: Icon(Icons.cast),
        onPressed: () => print('Cast'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CastomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Подложка страницы
            Container(
                height: 1300,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange
            ),
            // Постер фильма
            Positioned(
              top: 0,
              child:  _ontapposter(imagesForDecoration[3]),
              /*Swiper (
                itemCount: imagesForDecoration.length,
                itemBuilder: (BuildContext context, int index){
                  return _ontapposter(imagesForDecoration[index]);
                },
              ),*/
            ),
            // Название фильма 1
            Positioned(
              top: 350,
              child: Container(
                child: Text(
                  'Spider-Man',
                  style: TextStyle (
                      fontSize: 30,
                      fontFamily: 'FarFromHome',
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                ),
              ),
            ),
            // Название фильма 2
            Positioned(
              top: 385,
              child: Container(
                child: Text(
                  'from away to home',
                  style: TextStyle (
                      fontSize: 20,
                      fontFamily: 'FarFromHome',
                      letterSpacing: 2,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            // Жанры фильма
            /*Container(
            margin: EdgeInsets.only(top: 410),
            //decoration: BoxDecoration(color: Colors.orange),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('фантастика', style: _textstyleforgenre),
                Text('боевик', style: _textstyleforgenre),
                Text('приключения', style: _textstyleforgenre),
              ],
            ),
          ),*/
            // Кнопки
            Positioned(
              top: 420,
              left: 0,
              right: 0,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Левая кнопка List
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'List',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  // Кнопка
                  TextButton.icon(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.only(left: 10, right: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    icon: Icon(Icons.play_arrow, size: 30),
                    label: Text(
                      'Play',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  // Правая кнопка Info
                  Column(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'Info',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}