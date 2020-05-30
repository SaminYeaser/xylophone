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
  void buildKey(){
    FlatButton(
      onPressed: (){
        playSound(7);
      },
      child: Text('Click Me'),
      color: Colors.red,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('Xylophone'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
