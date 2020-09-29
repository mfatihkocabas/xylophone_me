import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildFunc({Color color,int soundNumber:1}){
    return Expanded(
      child: FlatButton(
        color:color,
        onPressed: () {
          playsound(soundNumber);
        },
        child: Center(
          child: Text('click me'),
        ),
      ),
    );

  }
  void playsound(int soundNumber){
    AudioCache player = AudioCache();
    player.play('note$soundNumber.mp3');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildFunc(color:Colors.red,soundNumber:1),
                buildFunc(color:Colors.orangeAccent,soundNumber:2),
                buildFunc(color:Colors.yellowAccent,soundNumber:3),
                buildFunc(color:Colors.blue,soundNumber:4),
                buildFunc(color:Colors.green,soundNumber:5),
                buildFunc(color:Colors.purple,soundNumber:6),
                buildFunc(color:Colors.grey,soundNumber:7),



      ],
            )),
      ),
    );
  }
}
