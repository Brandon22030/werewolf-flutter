import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';


class MyCounter extends StatefulWidget {

  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();

}


class _MyCounterState extends State<MyCounter> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text('Count: $count'),
        FloatingActionButton(onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add_circle_outline_sharp)),

      ],
    );

  }

}