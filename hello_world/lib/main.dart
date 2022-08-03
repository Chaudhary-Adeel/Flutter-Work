import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                fontFamily: 'Pacifico',
                color: Colors.white
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Muhammad Adeel"),
                  Icon(Icons.wifi),
                  Text("Adeel Chaudhary")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: Center(child: Text("Container 1")),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(child: Text("Container 1")),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: Center(child: Text("Container 1")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
