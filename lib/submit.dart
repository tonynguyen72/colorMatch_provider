import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/matches.dart';
import 'package:provider_practice/previewCircle.dart';
import 'package:provider_practice/previewModel.dart';

class Submit extends StatelessWidget {
  static var difference;

  String message(difference) {
    difference = ((PreviewCircle.previewHex) - (Matches.matchHex)).abs();

    if (difference < 4194304) {
      return "Top Marks. You have 2020 vision";
    } else if (difference < 8388608) {
      return "Your eyesight is pretty good. You are tetrachromatic";
    } else if (difference < 12582912) {
      return "You need to chomp on a carrot. Not even close";
    } else {
      return "You are color blind. Stay away from the traffic lights";
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<PreviewModel>(context, listen: true);
    void _showDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Thank you for playing game'),
          content: Text(message(difference)),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    }

    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: color.colorsPreview,
      onPressed: (){
        message(difference);
        _showDialog();
      },
      child: Text('Submit',
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
