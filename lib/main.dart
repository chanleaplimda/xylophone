import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
 // const Xylophone({Key? key}) : super(key: key);

  void play(int noteNum) {
    Audio audio = Audio.load("assets/note$noteNum.wav");
    audio.play();
  }
  Expanded _buildKey({required Colors ,required int noteNum}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors),
        onPressed: () {
          play(noteNum);
        },
        child: Text(""),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildKey(Colors: Colors.red, noteNum: 1),
              _buildKey(Colors: Colors.orange, noteNum: 2),
              _buildKey(Colors: Colors.green, noteNum: 3),
              _buildKey(Colors: Colors.blue, noteNum: 4),
              _buildKey(Colors: Colors.brown, noteNum: 5),
              _buildKey(Colors: Colors.greenAccent, noteNum: 6),
              _buildKey(Colors: Colors.yellowAccent, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
