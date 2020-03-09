import 'package:flutter/material.dart';
import 'colors.dart';

class CircularImage extends StatelessWidget {
  String image;

  CircularImage({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width),
              gradient: LinearGradient(
                colors: [defaultShadowColor, whiteShadowColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(8, 6),
                    blurRadius: 12),
                BoxShadow(
                    color: defaultShadowColor,
                    offset: Offset(-8, -6),
                    blurRadius: 12),
              ]),
        ),
        Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: CircleAvatar(backgroundImage: Image.asset(image).image))
      ],
    );
  }
}
