import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
Expanded code({Color color, int soundnumber}) 
{
  return Expanded(
    child:FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundnumber.wav');
      },
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
            code(color: Colors.red, soundnumber: 1),
            code(color: Colors.orange, soundnumber: 2),
            code(color: Colors.yellow, soundnumber:3),
            code(color: Colors.green, soundnumber:4),
            code(color: Colors.teal, soundnumber:5),
            code(color: Colors.blue, soundnumber:6),
            code(color: Colors.purple, soundnumber:7),
          
          
       
          ],
        )),
      ),
    );
  }
}
