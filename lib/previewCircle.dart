import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'circle.dart';
import 'previewModel.dart';

class PreviewCircle extends StatelessWidget {
  static var previewHex;
  @override
  Widget build(BuildContext context) {
    var color = Provider.of<PreviewModel>(context, listen: true);

    previewHex = color.colorsPreview.value;
    return Column(
      children: [
        Circle(color.colorsPreview),
        Text(previewHex.toString()),
      ],
    );
  }
}
