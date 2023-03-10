import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(counterapp());

class counterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  counterscreen createState() => counterscreen();
}

class counterscreen extends State<CounterScreenState> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Screen'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _incrementCount,
              ),
              Text("${_count}"),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: _decrementCount,
              ),
            ],
          ),
        ));
  }
}
