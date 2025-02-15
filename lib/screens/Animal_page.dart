import 'package:flutter/material.dart';
import 'package:learning/components/items.dart';
import 'package:learning/model/Number.dart';

class Animal_page extends StatelessWidget {
  const Animal_page({super.key});
  final List<Number> number = const [
    Number(
        image: "assets/images/Animal/1.png",
        text: "Cat",
        sound: "sounds/sound_animal/ca.mp3"),
    Number(
        image: "assets/images/Animal/2.png",
        text: "Cow",
        sound: "sounds/sound_animal/cow.mp3"),
    Number(
        image: "assets/images/Animal/3.png",
        text: "Dog",
        sound: "sounds/sound_animal/dog.mp3"),
    Number(
        image: "assets/images/Animal/4.png",
        text: "Chicken",
        sound: "sounds/sound_animal/ch.mp3"),
    Number(
        image: "assets/images/Animal/5.png",
        text: "Duck",
        sound: "sounds/sound_animal/duck.mp3"),
    Number(
        image: "assets/images/Animal/6.png",
        text: "Dove",
        sound: "sounds/sound_animal/dove.mp3"),
    Number(
        image: "assets/images/Animal/7.png",
        text: "Elephant",
        sound: "sounds/sound_animal/ele.mp3"),
    Number(
        image: "assets/images/Animal/8.png",
        text: "Dolphin",
        sound: "sounds/sound_animal/do.mp3"),
    Number(
        image: "assets/images/Animal/9.png",
        text: "Bee",
        sound: "sounds/sound_animal/bee.mp3")
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
            backgroundColor: Color.fromARGB(255, 88, 63, 54),
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
