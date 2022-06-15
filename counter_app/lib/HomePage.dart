import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Flutter Demo Home page',
            style: TextStyle(fontSize: 16),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: increment, child: Icon(Icons.add)),
            SizedBox(
              width: 5,
            ),
            FloatingActionButton(
                onPressed: decrement, child: Icon(Icons.remove)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'You have pushed the button this many times',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ));
  }
}
