import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              '@fleshkaomsk',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
                'Шерегеш волшебное место'
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  size: 15.0,
                  color: Colors.white,
                ),
                Text(
                  'Name Song',
                  style: TextStyle(
                      fontSize: 12.0
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
