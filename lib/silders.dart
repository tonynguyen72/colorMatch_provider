import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'matchesModel.dart';

class Sliders extends StatelessWidget {
  //
  Widget _buildSlider(
          {String label, Color color, double value, Function onChanged}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(label,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Slider(
              activeColor: color,
              value: value,
              onChanged: onChanged,
              min: 0.0,
              max: 255.0,
            ),
          ],
        ),
      );
  //
  @override
  Widget build(BuildContext context) {
    var color = Provider.of<MatchesModel>(context, listen: true);
    return Column(
      children: [
        _buildSlider(
            label: "Red (${color.red.toInt()})",
            color: Colors.red,
            value: color.red,
            onChanged: (double v) {
              color.red = v;
            }),
        _buildSlider(
          label: "Green (${color.green.toInt()})",
          color: Colors.green,
          value: color.green,
          onChanged: (double v) {
            color.green = v;
          },
        ),
        _buildSlider(
          label: "Blue (${color.blue.toInt()})",
          color: Colors.blue,
          value: color.blue,
          onChanged: (double v) {
            color.blue = v;
          },
        ),
      ],
    );
  }
}
