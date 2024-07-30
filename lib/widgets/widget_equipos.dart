import 'package:flutter/material.dart';

class WidgetEquipos extends StatelessWidget {
  String tipo;
  String codigo;
  WidgetEquipos(this.tipo, this.codigo);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$tipo :",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Text(
          codigo,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
