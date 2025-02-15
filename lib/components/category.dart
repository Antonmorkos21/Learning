import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          width: double.infinity,
          margin: EdgeInsets.only(left: 10, right: 10),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 50),
          height: 120,
          child: Row(
            children: [
              Text(text!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 200,
              ),
              Icon(
                (Icons.play_arrow),
              )
            ],
          )),
    );
  }
}
