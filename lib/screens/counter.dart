import 'package:flutter/material.dart';

int count = 0;

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  num value1 = 0;
  num value2 = 0;
  String entry = '';
  TextEditingController _input1 = TextEditingController();
  TextEditingController _input2 = TextEditingController();
  void _clickUpdate() {
    count++;
    setState(() {});
  }

  void addTwoNum() {
    setState(() {});
    entry = _input1.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter APP',
          style: TextStyle(color: Colors.brown),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Enter a value'),
                controller: _input1,
              ),

              // Icon(Icons.add),
              // TextField(
              //   decoration: InputDecoration(hintText: 'Enter another value'),
              //   controller: _input2,
              //   keyboardType: TextInputType.number
              // ),

              Text('New Entry is $entry'),

              OutlinedButton(
                  onPressed: () {
                    addTwoNum();
                  },
                  child: Text('Add'))
              // Text(
              //   'No. of times you have tapped \n $count',
              //   style: TextStyle(fontSize: 26.0),
              //   textAlign: TextAlign.center,
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       clickUpdate();
              //     },
              //     child: Text('Click Me'))
            ],
          )),
    );
  }
}
