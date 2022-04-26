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
    var actorsForSpiderMan = [
      'assets/images/netflix/spiderman/actors/1.TomHolland.jpg',
      'assets/images/netflix/spiderman/actors/2.Zandeya.jpg',
      'assets/images/netflix/spiderman/actors/3.LoraHarrier.jpg',
      'assets/images/netflix/spiderman/actors/4.MarisaTombey.jpg',
      'assets/images/netflix/spiderman/actors/5.TonyRevolory.jpg',
      'assets/images/netflix/spiderman/actors/6.JeycobBatalon.jpg',
      'assets/images/netflix/spiderman/actors/7.JohnFavro.jpg',
      'assets/images/netflix/spiderman/actors/8.KevinFaygi.jpg'
    ];
    var criticsForSpiderMan = [
      'assets/images/netflix/spiderman/critics/first.jpg',
      'assets/images/netflix/spiderman/critics/fiwth.jpg',
      'assets/images/netflix/spiderman/critics/second.jpg',
      'assets/images/netflix/spiderman/critics/seventh.webp',
      'assets/images/netflix/spiderman/critics/sixth.jpeg',
      'assets/images/netflix/spiderman/critics/third.jpg',
    ];
    var netflixOriginalPosters = [
      'assets/images/netflix/spiderman/netflixOriginalPosters/0fbe56100068709.5f00aa5e71e9d.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/5e7568ad6be6ad05ce3896a90e0ea400.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/3611989-elcck2hxyaaa5mb.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/clinical-2017.webp',
      'assets/images/netflix/spiderman/netflixOriginalPosters/e9fae3dcae1a3b978adaf214cac3c607.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/e63aa1100068709.5f00aa5e73d4a.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/f7623d2950a8a54357336cd33e7889f6.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/imperial-dreams-2014.webp',
      'assets/images/netflix/spiderman/netflixOriginalPosters/mateus-caetano-propaganda-final-english.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/MoneyHeist-NetflixTVShowPosterFanArt_67917fbc-de8e-4228-90a4-217503d7bbd4.jpg',
      'assets/images/netflix/spiderman/netflixOriginalPosters/the-sandman-dream.webp',
      'assets/images/netflix/spiderman/netflixOriginalPosters/Без названия.jpg',
    ];


    Container _poster (){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Swiper (
          autoplay: true,
          itemCount: imagesForDecoration.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagesForDecoration[index]),
                    fit: BoxFit.cover,
                  )
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
          },
          onTap: (index){
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
                          image: AssetImage(imagesForDecoration[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                );
              },
            );
          },
        ),
      );
    }
    GestureDetector _ontapposter (){
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
                            image: AssetImage(imagesForDecoration[2]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                  );
            },
          );
        },
        child: _poster(),
      );
    }
    Positioned _listView(top, widt, mass){
      return Positioned(
        top: top,
        height: widt+8,
        width: MediaQuery.of(context).size.width,
        child: Container(
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                color: Colors.black87
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mass.length,
              itemBuilder: (BuildContext context, int index) =>
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: widt,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(mass[index]),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
            )
        ),
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
                height: 1150,
                width: MediaQuery.of(context).size.width,
                color: Colors.black87
            ),
            // Постер фильма
            Positioned(
              top: 0,
              child: _ontapposter(),
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
                  GestureDetector(
                    onTap: (){
                      print('TAPPED ON LIST');
                    },
                    child: Column(
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
                  ),
                  // Кнопка
                  TextButton.icon(
                    onPressed: (){
                      print('TAPPED ON PLAY');
                    },
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
                  GestureDetector(
                    onTap: (){
                      print('TAPPED ON INFO');
                    },
                    child: Column(
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
                  )
                ],
              ),
            ),
            // Актёры
            Positioned(
              top: 485,
              child: Container(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  'Актёрский состав',
                  style: TextStyle (
                      fontSize: 20,
                      fontFamily: 'FarFromHome',
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            _listView(520.0, 130.0, actorsForSpiderMan),
            // Обзоры и отзывы
            Positioned(
              top: 660,
              child: Container(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  'Обзоры и отзывы',
                  style: TextStyle (
                      fontSize: 20,
                      fontFamily: 'FarFromHome',
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            _listView(690.0, 122.0, criticsForSpiderMan),
            // Original Netflix
            Positioned(
              top: 835,
              child: Container(
                child: Text(
                  'Original NETFLIX',
                  style: TextStyle (
                      fontSize: 20,
                      fontFamily: 'FarFromHome',
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Positioned(
              top: 865,
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.black87
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: netflixOriginalPosters.length,
                    //separatorBuilder: (BuildContext context, int index) => Divider(),
                    itemBuilder: (BuildContext context, int index) =>
                        Card(
                          child: Container(
                            height: 400,
                            width: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(netflixOriginalPosters[index]),
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                        )
                  )
            )
            ),
          ]
        ),
      ),
    );
  }
}