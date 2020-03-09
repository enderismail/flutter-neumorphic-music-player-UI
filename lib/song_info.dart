import 'package:flutter/material.dart';
import 'colors.dart';

class SongInfo extends StatelessWidget {
  String songText;
  String interpretText;
  Color color;

  SongInfo(
      {@required this.songText,
      @required this.interpretText,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            songText,
            style: TextStyle(fontSize: 26, color: color),
          ),
          Text(
            interpretText,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
