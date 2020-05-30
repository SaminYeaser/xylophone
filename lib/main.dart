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
            FlatButton(
              onPressed: (){
                playSound(1);
              },
              child: Text('Click Me'),
              color: Colors.deepPurple,
            ),
            FlatButton(
              onPressed: (){
                playSound(2);
              },
              child: Text('Click Me'),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: (){
                playSound(3);
              },
              child: Text('Click Me'),
              color: Colors.lightBlueAccent,
            ),
            FlatButton(
              onPressed: (){
               playSound(4);
              },
              child: Text('Click Me'),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: (){
                playSound(5);
              },
              child: Text('Click Me'),
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: (){
                playSound(6);
              },
              child: Text('Click Me'),
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: (){
                playSound(7);
              },
              child: Text('Click Me'),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
