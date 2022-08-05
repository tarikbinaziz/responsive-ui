import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: imageResponsive()));
}

class imageResponsive extends StatefulWidget {
  const imageResponsive({Key? key}) : super(key: key);

  @override
  State<imageResponsive> createState() => _imageResponsiveState();
}

class _imageResponsiveState extends State<imageResponsive> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/1.png"),
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
                //  color: Colors.blue,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "All the animal lives in jungle",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {},
                      child: Text(
                        "GoAnimal",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                child: Text(
                  "All the animal lives in jungle.Sometimes we go to the zoo to see this animal.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "Made By Tarik",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
