import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  //Method
  Expanded buildKey({Color clr, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: clr,
        child: Text('Click Me'),
        onPressed: () => playSound(soundNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(clr: Colors.red, soundNumber: 1),
              buildKey(clr: Colors.orange, soundNumber: 2),
              buildKey(clr: Colors.yellow, soundNumber: 3),
              buildKey(clr: Colors.green, soundNumber: 4),
              buildKey(clr: Colors.blue, soundNumber: 5),
              buildKey(clr: Colors.indigoAccent, soundNumber: 6),
              buildKey(clr: Colors.indigo, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
