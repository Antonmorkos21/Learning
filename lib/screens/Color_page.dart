import 'package:flutter/material.dart';
import 'package:learning/components/items.dart';
import 'package:learning/model/Number.dart';

class Color_page extends StatelessWidget {
  const Color_page({super.key});
  final List<Number> number = const [
    Number(
        image: "assets/images/colors/color_black.png",
        text: "Black",
        sound: "sounds/sound_color/black.mp3"),
    Number(
        image: "assets/images/colors/color_white.png",
        text: "White",
        sound: "sounds/sound_color/white.mp3"),
    Number(
        image: "assets/images/colors/color_red.png",
        text: "Red",
        sound: "sounds/sound_color/red.mp3"),
    Number(
        image: "assets/images/colors/color_gray.png",
        text: "Gray",
        sound: "sounds/sound_color/gray.mp3"),
    Number(
        image: "assets/images/colors/color_brown.png",
        text: "brown",
        sound: "sounds/sound_color/brown.mp3"),
    Number(
        image: "assets/images/colors/color_green.png",
        text: "Green",
        sound: "sounds/sound_color/green.mp3"),
    Number(
        image: "assets/images/colors/color_yellow.png",
        text: "yellow",
        sound: "sounds/sound_color/yellow.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 174, 91, 61),
          appBar: AppBar(
            title: Text(
              "learning",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Noto Serif Hentaigana"),
            ),
            backgroundColor: Color.fromARGB(255, 66, 50, 44),
          ),
          body: ListView.builder(
              itemCount: number.length,
              itemBuilder: (context, index) {
                return items(
                  number: number[index],
                );
              }),
        ));
  }

  List<Widget> getlist(List<Number> number) {
    List<Widget> itemList = [];
    for (int i = 0; i < number.length; i++) {
      itemList.add(items(number: number[i]));
    }
    return itemList;
  }
}
