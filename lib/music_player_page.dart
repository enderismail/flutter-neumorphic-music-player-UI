import 'package:flutter/material.dart';
import 'package:neumorph_music_player/circular_image.dart';
import 'package:neumorph_music_player/colors.dart';
import 'package:neumorph_music_player/neumorph_button.dart';
import 'package:neumorph_music_player/song_info.dart';
import 'package:neumorph_music_player/song_progressbar.dart';

class MusicPlayerPage extends StatefulWidget {
  @override
  _MusicPlayerPage createState() => _MusicPlayerPage();
}

class _MusicPlayerPage extends State<MusicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NeumorphButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
                Text(
                  "Favorite Songs",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: turquoiseDarkColor),
                ),
                NeumorphButton(
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            CircularImage(
              image: "assets/bg_phone_turquoise.jpg",
            ),
            SizedBox(
              height: 32,
            ),
            SongInfo(
              songText: "I like this song (feat. Unknown)",
              interpretText: "Singer",
              color: textColor,
            ),
            SizedBox(
              height: 16,
            ),
            SongProgressBar(
              gradientStart: turquoiseLightColor,
              gradientEnd: turquoiseDarkColor,
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "1:33",
                    style: TextStyle(fontSize: 20, color: turquoiseDarkColor),
                  ),
                  Text(
                    "3:52",
                    style: TextStyle(fontSize: 20, color: turquoiseDarkColor),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NeumorphButton(
                  icon: Icon(Icons.skip_previous),
                ),
                NeumorphButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: turquoiseDarkColor,
                  ),
                  radius: 40,
                ),
                NeumorphButton(
                  icon: Icon(Icons.skip_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
