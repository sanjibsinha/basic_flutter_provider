import 'package:basic_flutter_provider/models/counting_the_number.dart';
import 'package:basic_flutter_provider/views/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/**
 * we must add the dependency on provider to our ‘pubspec.yaml’ file. 

    // pubspec.yaml
    # ...

    dependencies:
    flutter:
        sdk: flutter

    provider: 
 */

void main() {
  runApp(
    // ChangeNotifierProvider, unlike ChangeNotifier, comes from the Provider package
    // and it provides an instance of a ChangeNotifier to the widgets,
    // which have already subscribed to it
    // we should place the ChangeNotifierProvider Just above the widgets that need to access it.
    // you will understand provider better if you already have understood how
    // InheritedWidget works
    ChangeNotifierProvider(
      create: (context) =>
          CountingTheNumber(), // designed Model is provided to the desired widgets
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
