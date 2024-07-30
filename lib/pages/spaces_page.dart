import 'package:flutter/material.dart';
import 'package:navigatorwork/constants/constant.dart';
import 'package:navigatorwork/widgets/widget_equipos.dart';

class SpacesPage extends StatefulWidget {
  const SpacesPage({super.key});

  @override
  _SpacesPageState createState() => _SpacesPageState();
}

class _SpacesPageState extends State<SpacesPage> {
  Color _buttonColor = Colors.blue;
  String _buttonText = "Encender";

  void _toggleButton() {
    setState(() {
      if (_buttonText == "Encender") {
        _buttonText = "Apagar";
        _buttonColor = Colors.redAccent;
      } else {
        _buttonText = "Encender";
        _buttonColor = Colors.blueAccent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headertittle,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            WidgetEquipos("Fabricante", "Refrigeradora"),
            WidgetEquipos("Modelo", "TP-KNT"),
            WidgetEquipos("MAC", "30:40:FC:30:PT:40"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _toggleButton,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _buttonColor,
                ),
                child: Text(
                  _buttonText,
                  style: TextStyle(color: Colors.white),
                ), // Texto del botón
              ),
            ),
          ],
        ),
      ),
    );
  }
}
