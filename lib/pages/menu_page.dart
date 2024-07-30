import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:navigatorwork/constants/constant.dart';
import 'package:navigatorwork/widgets/box_widgets.dart';
import 'package:navigatorwork/widgets/box_widgets2.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headertittle,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Espacios",
                  style: titulo,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BoxWidgets("A"),
                    BoxWidgets("B"),
                    BoxWidgets("C"),
                    BoxWidgets("D"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Equipos Conectados", style: titulo),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              children: [
                BoxWidgetsIcons("Tv Cuarto", Icons.tv),
                BoxWidgetsIcons("Regrigeradora", Icons.kitchen_outlined),
                BoxWidgetsIcons("Puerta Sala", Icons.door_back_door_outlined),
                BoxWidgetsIcons("Cochera", Icons.car_repair),
              ],
            ),
          )
        ],
      ),
    );
  }
}
