import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1, Colors.red),
            buildKey(2, Colors.orange),
            buildKey(3, Colors.green),
            buildKey(4, Colors.blueGrey),
            buildKey(5, Colors.blue),
            buildKey(6, Colors.yellow),
            buildKey(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}
