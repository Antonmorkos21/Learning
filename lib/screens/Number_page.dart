import 'package:flutter/material.dart';
import 'package:learning/components/items.dart';
import 'package:learning/model/Number.dart';

class Numbers_page extends StatelessWidget {
  const Numbers_page({super.key});
  final List<Number> number = const [
    Number(
        image: "assets/images/Numbers/number_one.png",
        text: "One",
        sound: "sounds/sound_nubmer/1.mp3"),
    Number(
        image: "assets/images/Numbers/number_two.png",
        text: "two",
        sound: "sounds/sound_nubmer/2.mp3"),
    Number(
        image: "assets/images/Numbers/number_three.png",
        text: "three",
        sound: "sounds/sound_nubmer/3.mp3"),
    Number(
        image: "assets/images/Numbers/number_four.png",
        text: "four",
        sound: "sounds/sound_nubmer/4.mp3"),
    Number(
        image: "assets/images/Numbers/number_five.png",
        text: "five",
        sound: "sounds/sound_nubmer/5.mp3"),
    Number(
        image: "assets/images/Numbers/number_six.png",
        text: "six",
        sound: "sounds/sound_nubmer/6.mp3"),
    Number(
        image: "assets/images/Numbers/number_seven.png",
        text: "seven",
        sound: "sounds/sound_nubmer/7.mp3"),
    Number(
        image: "assets/images/Numbers/number_eight.png",
        text: "eight",
        sound: "sounds/sound_nubmer/8.mp3"),
    Number(
        image: "assets/images/Numbers/number_nine.png",
        text: "Nine",
        sound: "sounds/sound_nubmer/9.mp3"),
    Number(
        image: "assets/images/Numbers/number_ten.png",
        text: "Ten",
        sound: "sounds/sound_nubmer/10.mp3")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: Text(
                "learning",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "Noto Serif Hentaigana"),
              ),
              backgroundColor: Color.fromARGB(255, 88, 63, 54)),
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
      itemList.add(items(
        number: number[i],
      ));
    }
    return itemList;
  }
}
