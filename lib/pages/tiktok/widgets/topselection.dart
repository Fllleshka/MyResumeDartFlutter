import 'package:flutter/material.dart';

class TopSelection extends StatelessWidget {
  const TopSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Following'),
          Container(
            width: 15.0,
          ),
          Text(
            'For you',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
