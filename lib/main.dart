import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(Xylophone());
}

class Xylophone extends StatefulWidget {

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('assets/note$soundNumber.wav');
  }
  Expanded buildKey({Color color, int soundNumber}){
    return
    Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
//        appBar: AppBar(
//          title: new Text('Xylophone'),
//          backgroundColor: Colors.redAccent,
//        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.deepPurple,soundNumber: 1),
            buildKey(color: Colors.blue,soundNumber: 2),
            buildKey(color: Colors.lightBlueAccent,soundNumber: 3),
            buildKey(color: Colors.green,soundNumber: 4),
            buildKey(color: Colors.yellow,soundNumber: 5),
            buildKey(color: Colors.orange,soundNumber: 6),
            buildKey(color: Colors.red,soundNumber: 7)
          ],
        ),
      ),
    );
  }
}
