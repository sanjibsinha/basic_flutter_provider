import 'package:basic_flutter_provider/models/counting_the_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// ‘Provider.of’, just like Consumer needs to know the type of the model.
    // We need to specify the model ‘CountingTheNumber’.
    //this time only this widget will be rebuilt
    final CountingTheNumber counter = Provider.of<CountingTheNumber>(context);
    return Column(
      children: [
        Text(
          '${counter.number}',
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () {
            counter.increaseNumber();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
