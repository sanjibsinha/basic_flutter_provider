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

class AVeryDeepWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is a simple Text widget',
            style: TextStyle(
              color: Colors.black,
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          //now we are going to build a very deep widget tree
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This is another simple Text widget deep inside the tree.',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'You have pushed the button this many times:',
                    style: TextStyle(fontSize: 35.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  // the whole top widgets will remain unaffected when state changes
                  ColumnClass(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
