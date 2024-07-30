import 'package:flutter/material.dart';
import 'package:navigatorwork/constants/constant.dart';
import 'package:navigatorwork/pages/equipos_page.dart';
import 'package:navigatorwork/pages/spaces_page.dart';

class BoxWidgets extends StatelessWidget {
  String text;

  BoxWidgets(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EquiposPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: decoration,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 70, 150),
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        )),
        width: 120,
        height: 120,
      ),
    );
  }
}
