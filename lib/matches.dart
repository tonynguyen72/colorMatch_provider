import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/circle.dart';
import 'package:provider_practice/matchesModel.dart';

class Matches extends StatelessWidget {
  static var matchHex;
  @override
  Widget build(BuildContext context) {
    return Consumer<MatchesModel>(
      builder: (context, matchesModel, _) {
        var color = Color.fromRGBO(matchesModel.red.toInt(),
            matchesModel.green.toInt(), matchesModel.blue.toInt(), 1);

        matchHex = color.value;

        return Column(
          children: [
            Circle(color),
            Text(matchHex.toString()),
          ],
        );
      },
    );
  }
}
