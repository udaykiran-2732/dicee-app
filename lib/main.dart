import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:const  Color.fromARGB(255, 131, 144, 150),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text("Dicee App"),
          centerTitle: true,
          shadowColor: Colors.black87,
        ),
        body:const  Dicee(),
      ),
    ),
  );
}
class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftButtonImage = 6;
  int rightButtonImage = 6;
  void generateRandomNumber() {
    setState(() {
      rightButtonImage = Random().nextInt(6) + 1;
      leftButtonImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 120.0,
              height: 120.0,
              child: FloatingActionButton(
                backgroundColor: Colors.indigo,
                onPressed: () => generateRandomNumber(),
                child: Image(
                  image: AssetImage("./images/dice$leftButtonImage.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 120.0,
              height: 120.0,
              child: FloatingActionButton(
                backgroundColor: Colors.indigo,
                onPressed: () => generateRandomNumber(),
                child: Image.asset("./images/dice$rightButtonImage.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
