import 'package:flutter/material.dart';

class ActionsToolBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(),
          _getSocialAction(icon: Icons.favorite, title: '3.2'),
          _getSocialAction(icon: Icons.chat_bubble, title: '16.5'),
          _getSocialAction(icon: Icons.reply, title: 'Share', isShare: true),
          _getMusicPlayerAction(),
        ],
      ),
    );
  }

  Widget _getSocialAction({
    required String title,
    required IconData icon,
    bool isShare = false }){
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: isShare ? 25.0 : 35.0,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: isShare ? 5.0 : 2.0,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: isShare ? 10.0 : 12.0
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFollowAction(){
    return Container(
      width: 60.0,
      height: 60.0,
      padding: EdgeInsets.all(1.0),
      child: Stack(
        children: [
          // Картинка профиля
          Positioned(
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child:  Image.asset(
                    'assets/images/tiktok/photoprofile.png'
                ),
              )
          ),
          // Кнопочка "PLUS"
          Positioned(
            bottom: 0,
            left: 17.5,
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(
    colors: [
      Colors.grey.shade800,
      Colors.grey.shade900,
      Colors.grey.shade900,
      Colors.grey.shade800,
    ],
    stops: [0.0,0.4,0.6,1.0],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight
  );

  Widget _getMusicPlayerAction(){
    return Container(
      width: 60.0,
      height: 60.0,
      child: Column( children: [
        Container(
          padding: EdgeInsets.all(4.0),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            gradient: musicGradient,
            borderRadius: BorderRadius.circular(25.0)
          ),
          child: Image.asset(
            'assets/images/tiktok/miagi.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ],
      ),
    );
  }
}
