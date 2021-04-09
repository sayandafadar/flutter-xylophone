import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded musicButton(color, noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              musicButton(Colors.red, 1),
              musicButton(Colors.blue, 2),
              musicButton(Colors.green, 3),
              musicButton(Colors.orange, 4),
              musicButton(Colors.pink, 5),
              musicButton(Colors.yellow, 6),
              musicButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
