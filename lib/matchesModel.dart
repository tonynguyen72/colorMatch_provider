import 'package:flutter/material.dart';

class MatchesModel with ChangeNotifier {
  //
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;

  //getter & getter
  double get red => _red;
  set red(double val) {
    _red = val;
    notifyListeners();
  }

  double get green => _green;
  set green(double val) {
    _green = val;
    notifyListeners();
  }

  double get blue => _blue;
  set blue(double val) {
    _blue = val;
    notifyListeners();
  }

  //?
}
