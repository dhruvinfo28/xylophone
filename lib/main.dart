import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void play(s) {
    final player = AudioCache();
    player.play('assets_note$s.wav');
  }

  Expanded buildKey({String sound, Color c}) {
    return Expanded(
      child: Container(
        color: c,
        child: TextButton(
          onPressed: () {
            play(sound);
          },
        ),
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
              buildKey(sound: '1', c: Colors.purple),
              buildKey(sound: '2', c: Colors.indigo),
              buildKey(sound: '3', c: Colors.blue),
              buildKey(sound: '4', c: Colors.green),
              buildKey(sound: '1', c: Colors.yellow),
              buildKey(sound: '1', c: Colors.orange),
              buildKey(sound: '1', c: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

// Flutter Functions
//     void greet({String greeting,String name}){
//         print('$name $greeting');
//     }
//     greet(greeting:'dsf', name:'dhruv');
//Or simply remember the order
//void greet(String a, String b){}
//greet('dsf', 'sd');
