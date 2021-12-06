import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Map<int, dynamic> MyColors ={
    1:Colors.red,
    2:Colors.orange,
    3:Colors.yellow,
    4:Colors.lightGreen,
    5:Colors.green,
    6:Colors.blue,
    7:Colors.purple,
  };
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                coloredButton(1),
                coloredButton(2),
                coloredButton(3),
                coloredButton(4),
                coloredButton(5),
                coloredButton(6),
                coloredButton(7),
              ],
            )),
      ),
    );
  }

  Widget coloredButton(int i ){

    return Expanded(
      child: TextButton(
        onPressed: () {
          player.play("note$i.wav");
        },
        child: Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
        ),
        style: ButtonStyle(

            backgroundColor: MaterialStateProperty.all(MyColors[i]),
        ),
      ),
    );
  }
}
