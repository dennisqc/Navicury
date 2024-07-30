import 'package:flutter/material.dart';
import 'package:navigatorwork/constants/constant.dart';
import 'package:navigatorwork/pages/equipos_page.dart';
import 'package:navigatorwork/pages/spaces_page.dart';

class BoxWidgetsIcons extends StatelessWidget {
  String text;
  IconData icono;
  BoxWidgetsIcons(this.text, this.icono);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SpacesPage()));
      },
      child: Container(
        decoration: decoration,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              size: 90,
              color: const Color.fromARGB(255, 24, 70, 150),
            ),
            Text(
              text,
              style: TextStyle(
                  color: Color.fromARGB(255, 24, 70, 150), fontSize: 20),
            ),
          ],
        )),
        width: 120,
        height: 120,
      ),
    );
  }
}
