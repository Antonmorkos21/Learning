import 'package:flutter/material.dart';
import 'package:learning/screens/family_page.dart';
import 'package:learning/screens/screen1.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
              "assets/images/2.png",
              width: 350,
              height: 250,
            )),
            Text(
              "Learning",
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Noto Serif Hentaigana"),
            ),
            Text(
              "Developed by Eng. Anton Morkos",
              style: TextStyle(color: const Color.fromARGB(255, 198, 208, 215)),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen1();
                  }));
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 234, 175, 82)),
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    child: Center(
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
