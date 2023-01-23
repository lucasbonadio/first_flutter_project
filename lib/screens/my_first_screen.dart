import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
              Container(
                width: 37,
                height: 37,
                color: Colors.yellow,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
              Container(
                width: 37,
                height: 37,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.deepPurple,
              )
            ],
          )
        ]);
  }
}
