// ignore_for_file: prefer_const_constructors

import 'package:first_project/difficulty.dart';
import 'package:first_project/my_first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String imageUrl;
  final int difficulty;

  const Task(this.name, this.imageUrl, this.difficulty, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Container(
                              width: 200,
                              child: Text(
                                widget.name,
                                style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                        ),
                        Difficulty(
                          difficultyLevel: widget.difficulty,
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            level++;
                          });
                        },
                        child: Icon(Icons.arrow_drop_up)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // ignore: sort_child_properties_last
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: widget.difficulty >= 1
                            ? (level / widget.difficulty) / 10
                            : 1,
                      ),
                      width: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        'level: $level',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
