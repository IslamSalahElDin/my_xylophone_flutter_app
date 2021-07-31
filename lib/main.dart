import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(myXylophone());

//PLAY WITH GIT ;)
// HELLO ;)
class myXylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo func to play notes by numbers
    void playSound(int noteNumbero) {
      final audioPlayer = AudioCache();
      audioPlayer.play('note$noteNumbero.wav');
    }

    //todo a func by use the returnType(Expanded) and return it to (Expanded) and but the input in FuncName=>noteKey(HERE)
    Expanded noteKey(
        {Color theColorIs = Colors.red,
        String noteName = 'C TONE',
        int noteNumber = 1,
        double fountSizeIs = 70}) {
      return Expanded(
        child: FlatButton(
          color: theColorIs,
          colorBrightness: Brightness.light,
          child: Text(
            noteName,
            style: TextStyle(color: Colors.white, fontSize: fountSizeIs),
          ),
          onPressed: () {
            playSound(noteNumber);
            // final audioPlayer = AudioCache();
            // audioPlayer.play('note1.wav');
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        // appBar: AppBar(
        //   title: Text('My Xylophone'),
        //   backgroundColor: Colors.blueGrey[900],
        // ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                noteKey(
                    noteNumber: 1,
                    theColorIs: Colors.red,
                    noteName: 'C TONE',
                    fountSizeIs: 70),
                noteKey(
                    noteNumber: 2,
                    theColorIs: Colors.orange,
                    noteName: 'D TONE',
                    fountSizeIs: 60),
                noteKey(
                    noteNumber: 3,
                    theColorIs: Colors.yellow,
                    noteName: 'E TONE',
                    fountSizeIs: 50),
                noteKey(
                    noteName: 'F TONE',
                    noteNumber: 4,
                    fountSizeIs: 40,
                    theColorIs: Colors.green.shade400),
                noteKey(
                    noteNumber: 5,
                    theColorIs: Colors.green.shade800,
                    noteName: 'G TONE',
                    fountSizeIs: 35),
                noteKey(
                    noteNumber: 6,
                    theColorIs: Colors.blue,
                    noteName: 'H TONE',
                    fountSizeIs: 30),
                noteKey(
                    noteNumber: 7,
                    theColorIs: Colors.purple,
                    noteName: 'J TONE',
                    fountSizeIs: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
