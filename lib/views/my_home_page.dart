import 'package:basic_flutter_provider/controllers/a_very_deep_widget_tree.dart';
import 'package:basic_flutter_provider/models/counting_the_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Provider Explained to Beginners'),
        ),
        body: Center(
          child: AVeryDeepWidgetTree(),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
