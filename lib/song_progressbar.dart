import 'package:flutter/material.dart';
import 'colors.dart';

class SongProgressBar extends StatelessWidget {
  Color gradientStart;
  Color gradientEnd;

  SongProgressBar({@required this.gradientStart, @required this.gradientEnd});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32.0),
          width: double.infinity,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: bgColor,
            boxShadow: [
              BoxShadow(color: whiteShadowColor, offset: Offset(1, 4)),
              BoxShadow(color: defaultShadowColor, offset: Offset(-1, -4)),
            ],
          ),
        ),
        Positioned(
          top: 2,
          bottom: 2,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 36),
            width: 120,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  colors: [gradientStart, gradientEnd],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
        ),
      ],
    );
  }
}
