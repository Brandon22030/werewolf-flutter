import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'counter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wolvesville'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          backgroundColor: Color(0xFF3F51B5),
          shadowColor: Colors.black,
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Hello, World!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('A button'),
                  ),
                  Center(
                    child: MyCounter(),
                  )
                ],
                
              );
            },
          ),
        ),
      ),
    );
  }
}
