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
      home: myHome(),
    );
  }
}

class myHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: null,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(
                      image: AssetImage(
                        "assets/g.png",
                      ),
                    ),
                  ),
                  Text('check button'),
                ],
              ),
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black87)),
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
