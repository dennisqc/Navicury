import 'package:flutter/material.dart';
import 'package:navigatorwork/constants/constant.dart';

class EquiposPage extends StatefulWidget {
  const EquiposPage({super.key});

  @override
  State<EquiposPage> createState() => _EquiposPageState();
}

class _EquiposPageState extends State<EquiposPage> {
  double _currentValueLuz = 0;
  double _minValueLuz = 0;
  double _maxValueLuz = 100;

  double _currentValueWater = 0;
  double _minValueWater = 0;
  double _maxValueWater = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headertittle,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("AJUSTAR", style: titulo),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Luz",
                  style: subtitulo,
                ),
                Slider(
                    value: _currentValueLuz,
                    min: _minValueLuz,
                    max: _maxValueLuz,
                    thumbColor: Color.fromARGB(255, 24, 70, 150),
                    divisions: _maxValueLuz.toInt(),
                    label: _currentValueLuz.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentValueLuz = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Agua",
                  style: subtitulo,
                ),
                Slider(
                    value: _currentValueWater,
                    min: _minValueWater,
                    max: _maxValueWater,
                    thumbColor: Color.fromARGB(255, 24, 70, 150),
                    divisions: _maxValueWater.toInt(),
                    label: _currentValueWater.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentValueWater = value;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
