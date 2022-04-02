import 'package:flutter/material.dart';
import 'package:myresume/pages/tiktok/widgets/videodesctiprion.dart';
import 'package:myresume/pages/tiktok/widgets/actionstoolbar.dart';

class MiddleSelection extends StatelessWidget {
  const MiddleSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          VideoDescription(),
          ActionsToolBar(),
        ],
      ),
    );
  }
}
