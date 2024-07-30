import 'package:flutter/material.dart';

final TextStyle titulo = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

final TextStyle subtitulo = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
final BoxDecoration decoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        offset: Offset(0, 3),
        spreadRadius: 3,
        blurRadius: 5,
      )
    ]);
final PreferredSize headertittle = PreferredSize(
  preferredSize: Size.fromHeight(60.0),
  child: ClipRRect(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(30.0),
    ),
    child: AppBar(
      title: Text(
        "Navicury",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color.fromARGB(255, 24, 70, 150),
    ),
  ),
);
