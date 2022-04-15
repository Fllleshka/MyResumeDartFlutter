import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CastomAppBar extends StatelessWidget {
  final double scrollOfset;

  const CastomAppBar({
    Key? key,
    this.scrollOfset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String logoNetflix = 'assets/images/netflix/netflixLogo.png';

    Widget canselButton = TextButton(
      onPressed: (){
        Navigator.of(context).pushNamedAndRemoveUntil('/netflixui', (route) => false);
      },
      child: Text(
          'Выход',
          style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
          )
      )
    );

    Widget continueButton = TextButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text(
            'Остаться',
            style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            )
        )
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.black.withOpacity((scrollOfset/350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            GestureDetector(
              onTap: (){Navigator.of(context).pushNamed('/netflixui');},
              child: Image.asset(logoNetflix),
            ),
            SizedBox(width: 12),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    _AppBarButton(title: 'TV Shows',onTap: (){}),
                    _AppBarButton(title: 'Movies',onTap: (){}),
                    _AppBarButton(title: 'My List',onTap: (){}),
                    // Выйти из аккантуа
                    GestureDetector(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                            title: Center(
                              child: Text(
                                'Уже покидаете нас?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            content: Image.asset('assets/gifs/netflixout.gif'),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  canselButton,
                                  continueButton,
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child:  Image.asset(
                            'assets/images/tiktok/photoprofile.png'
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text (
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

