import 'package:flutter/material.dart';
import 'package:provider_practice/matches.dart';
import 'package:provider_practice/previewCircle.dart';
import 'package:provider_practice/resetButton.dart';
import 'package:provider_practice/silders.dart';
import 'package:provider_practice/submit.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Match'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Match the Color',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PreviewCircle(),
                Matches(),
              ],
            ),
            Sliders(),
            Submit(),
            ResetButton(),
          ],
        ),
      ),
    );
  }
}
