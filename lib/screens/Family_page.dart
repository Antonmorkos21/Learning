import 'package:flutter/material.dart';
import 'package:learning/components/items.dart';
import 'package:learning/model/Number.dart';

class Family_page extends StatelessWidget {
  const Family_page({super.key});
  final List<Number> number = const [
    Number(
        image: "assets/images/family_members/family_father.png",
        text: "Father",
        sound: "sounds/sound_family/f_Family_Members_In_EnglishM4A.m4a"),
    Number(
        image: "assets/images/family_members/family_mother.png",
        text: "Mother",
        sound: "sounds/sound_family/m_Family_Members_In_EnglishM4A.m4a.mp3"),
    Number(
        image: "assets/images/family_members/family_grandfather.png",
        text: "Grand Father",
        sound: "sounds/sound_family/gf_Family_Members_In_EnglishM4A .m4a"),
    Number(
        image: "assets/images/family_members/family_grandmother.png",
        text: "Grand Mother",
        sound: "sounds/sound_family/gm_Family_Members_In_EnglishM4A .m4a"),
    Number(
        image: "assets/images/family_members/family_younger_brother.png",
        text: "Brother",
        sound:
            "sounds/sound_family/bratherسماء_أفراد_العائلة_باللغة_الانجليزية_Family_Members_In_EnglishM4A.m4a"),
    Number(
        image: "assets/images/family_members/family_younger_sister.png",
        text: "Sister",
        sound: "sounds/sound_family/s.m4a"),
    Number(
        image: "assets/images/family_members/family_older_brother.png",
        text: "Uncle",
        sound: "sounds/sound_family/U_56.mp3"),
    Number(
        image: "assets/images/family_members/family_older_sister.png",
        text: "Aunt",
        sound: "sounds/sound_family/An.mp3"),
    Number(
        image: "assets/images/family_members/family_daughter.png",
        text: "Daughter",
        sound: "sounds/sound_family/D.mp3"),
    Number(
        image: "assets/images/family_members/family_son.png",
        text: "Son",
        sound: "sounds/sound_family/son_Family_Members_In_EnglishM4A.m4a")
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
                return items(number: number[index]);
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

