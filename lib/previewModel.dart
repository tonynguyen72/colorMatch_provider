import 'package:flutter/material.dart';
import 'uniquecolorgenerator.dart';

class PreviewModel with ChangeNotifier {
  Color colorPreviewModel = UniqueColorGenerator.getColor();

  Color get colorsPreview => colorPreviewModel;

  //reset method
  void reset() {
    colorPreviewModel = UniqueColorGenerator.getColor();
    notifyListeners();
  }

  //?
}
