import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning/model/Number.dart';

class items extends StatelessWidget {
  const items({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 183, 133, 108),
      child: Row(
        children: [
          Image.asset(
            number.image,
            width: 110,
            height: 90,
          ),
          Container(
            width: 187,
            child: Text(
              number.text,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "DM Serif Display",
                  color: Colors.white),
            ),
          ),
          Container(
              width: 30,
              child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(number.sound));
                  },
                  icon: Icon(Icons.play_arrow)))
        ],
      ),
    );
    ;
  }
}
