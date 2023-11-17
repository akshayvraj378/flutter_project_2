import 'package:flutter/material.dart';

class StackSam extends StatefulWidget {
  const StackSam({super.key});

  @override
  State<StackSam> createState() => _StackSamState();
}

class _StackSamState extends State<StackSam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue),
      body: SizedBox(
          child: Center(
        child: Stack(children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.green,
            height: 250,
            width: 250,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: AssetImage('assets/images/dragon.png'))),
          )
        ]),
      )),
    );
  }
}
