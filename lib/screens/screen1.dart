import 'package:flutter/material.dart';
import 'package:learning/components/category.dart';
import 'package:learning/screens/Animal_page.dart';
import 'package:learning/screens/Color_page.dart';
import 'package:learning/screens/Number_page.dart';
import 'package:learning/screens/family_page.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 50, 76),
        appBar: AppBar(
            title: Text(
              "learning",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Noto Serif Hentaigana"),
            ),
            backgroundColor: Color.fromARGB(255, 88, 63, 54)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            category(
              text: "Numbers",
              color: Colors.lightBlue[700],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Numbers_page();
                }));
              },
            ),
            SizedBox(
              height: 20,
            ),
            category(
              text: "Animal    ",
              color: Colors.green[400],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Animal_page();
                }));
              },
            ),
            SizedBox(
              height: 20,
            ),
            category(
              text: "Colors     ",
              color: Colors.red[400],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Color_page();
                }));
              },
            ),
            SizedBox(
              height: 20,
            ),
            category(
              text: "Family    ",
              color: Colors.blueGrey[600],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Family_page();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

