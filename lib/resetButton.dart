import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/matchesModel.dart';
import 'package:provider_practice/previewModel.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorPreview = Provider.of<PreviewModel>(context, listen: true);
    var colorMatch = Provider.of<MatchesModel>(context);

    void colorPreviewReset() {
      colorPreview.reset();
    }

    void matchesReset() {
      colorMatch.red = 0.0;
      colorMatch.green = 0.0;
      colorMatch.blue = 0.0;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.blue,
        child: Text(
          'Reset',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          colorPreviewReset();
          matchesReset();
        },
      ),
    );
  }
}
