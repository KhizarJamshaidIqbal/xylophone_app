// ignore_for_file: avoid_print, use_key_in_widget_constructors, non_constant_identifier_names, file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  void Playsound(int soundnum) async {
    final player = AudioPlayer();
    try {
      await player.play(AssetSource('note$soundnum.wav'));
      print("Successfully Play");
    } catch (e) {
      print("Error playing audio: $e");
    }
  }
  Expanded CreateButton(Color color,int num) {
    return Expanded(
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            Playsound(num);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: color,
          ),
          child: const Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.blue,1),
          const SizedBox(
            height: 5,
          ),
           CreateButton(Colors.green,2),
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.orange,3),
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.yellow,4),
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.redAccent,5),
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.lightGreen,6),
          const SizedBox(
            height: 5,
          ),
          CreateButton(Colors.grey,7),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
