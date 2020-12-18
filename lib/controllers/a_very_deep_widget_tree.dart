import 'package:basic_flutter_provider/models/counting_the_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AVeryDeepWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ‘Provider.of’, just like Consumer needs to know the type of the model.
    //We need to specify the model ‘CountingTheNumber’.
    final counter = Provider.of<CountingTheNumber>(context);
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
                  Text(
                    '${counter.number}',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      counter.increaseNumber();
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
