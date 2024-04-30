// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(Xylophone());
}

Widget keyMake(Color c, int i) {
  Audio a = Audio.load('tones/note$i.wav');
  return Expanded(
    child: InkWell(
      child: Container(
        width: 800,
        color: c,
      ),
      onTap: () {
        a.play();
      },
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: [
              keyMake(Colors.red, 1),
              keyMake(Colors.blue, 2),
              keyMake(Colors.orange, 3),
              keyMake(Colors.yellow, 4),
              keyMake(Colors.white, 5),
              keyMake(Colors.lightBlueAccent, 6),
              keyMake(Colors.green, 7),
            ],
          ),
        ),
      ),
    );
  }
}
