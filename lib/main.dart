import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/matchesModel.dart';
import 'package:provider_practice/previewModel.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PreviewModel>(create: (context) => PreviewModel()),
        ChangeNotifierProvider<MatchesModel>(create: (context) => MatchesModel()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Home(),
      ),
    );
  }
}
