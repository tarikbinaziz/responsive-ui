import 'package:flutter/material.dart';

void main() => runApp(resApp());

class resApp extends StatelessWidget {
  const resApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: AspectRatio(
          aspectRatio: 1 / 3,
          child: Container(
            color: Colors.amber,
          )),
    ));
  }
}
