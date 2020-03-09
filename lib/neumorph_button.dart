import 'package:flutter/material.dart';
import 'package:neumorph_music_player/colors.dart';

class NeumorphButton extends StatelessWidget {
  double radius;
  final Widget icon;

  NeumorphButton({this.radius = 32, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(radius),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(8, 6),
                      blurRadius: 12),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-8, -6),
                      blurRadius: 12),
                ]),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
