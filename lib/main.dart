import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Flutter App',
    home: Counter(),
  ));
}
class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If we changed _counter without calling
      // setState(), then the build method would not be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance
    // as done by the _increment method above.
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return Container(
      height: 36.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.lightGreen[500],
      ),
      child: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count: $_counter' , style: TextStyle(fontFamily: 'Raleway'),),
          ],
        )
    );
  }
}