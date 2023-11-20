import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            child: Container(
              color: Colors.black,
            )),
        Positioned(
            top: 60,
            child: Container(
              color: Colors.yellow,
            )),
        Positioned(
            top: 200,
            child: Container(
              color: Colors.pink,
            )),
        Positioned(
            top: 300,
            child: Container(
              color: Colors.purple,
            ))
      ],
    );
  }
}
