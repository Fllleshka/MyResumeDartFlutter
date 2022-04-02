import 'package:flutter/material.dart';
import 'package:myresume/pages/tiktok/widgets/bottonselection.dart';
import 'package:myresume/pages/tiktok/widgets/topselection.dart';
import 'package:myresume/pages/tiktok/widgets/middleselection.dart';
import 'package:video_player/video_player.dart';

class TikTok extends StatefulWidget {

  @override
  State<TikTok> createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> {

  late VideoPlayerController _controller;
  String videoway = 'assets/videos/tiktok/gesh.mp4';

  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.asset(videoway)
      ..initialize().then((_){
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Убираем надпись debug справа сверху
      debugShowCheckedModeBanner: false,
      title: "Flutter Tiktok UI",
      theme: ThemeData(
        textTheme: Theme.of(context)
          .textTheme
          .apply(
            bodyColor: Colors.white,
            displayColor: Colors.white
          )
      ),
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child:
                SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                // Верхняя секция
                TopSelection(),
                // Центральная секция
                MiddleSelection(),
                // Нижняя секция
                BottomSelection(),
              ],
            ),
          ],
        )
      ),
    );
  }
}
