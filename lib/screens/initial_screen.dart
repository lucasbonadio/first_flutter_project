// ignore_for_file: prefer_const_constructors

import 'package:first_project/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tasks'),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Task(
              'Play Video Game',
              'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
              1),
          Task(
              'Buy Clothes',
              'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
              3),
          Task(
              'Learn Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              5),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.remove_red_eye_sharp),
        onPressed: () {},
      ),
    );
  }
}
