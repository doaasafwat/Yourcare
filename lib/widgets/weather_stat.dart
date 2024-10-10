import 'package:flutter/material.dart';

class WeatherStat extends StatelessWidget {
  final String unit;
  final String value;
  final Color color;

  const WeatherStat({
    Key? key,
    required this.unit,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          unit,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
