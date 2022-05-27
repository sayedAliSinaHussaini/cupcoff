import 'package:cupcoff/cupcoff.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      body: CupCoff(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(10),
        backgrounColor: Colors.red,
        enableScroll: false,
        child: Column(children: [
          Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            height: 10,
            width: 10,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
          )
        ]),
      ),
    ),
  ));
}
