import 'package:cupcoff/cupcoff.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HomePage());
}

//this is an example of how to work with the CUPCOFF package.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupCoff(
        padding: const EdgeInsets.all(30),
        enableScroll: true,
        child: SizedBox(
          child: Column(children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.amber,
            )
          ]),
        ),
      ),
    );
  }
}
