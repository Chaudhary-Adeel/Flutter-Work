import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.home),
              SizedBox(width: 10,),
              Text("Lottery app"),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration:  BoxDecoration(
                  color: Colors.orange,
                  borderRadius: const BorderRadius.only(
                    topRight: const Radius.circular(50),
                  ),
                  border: Border.all(
                    color: Colors.red,
                    width: 2
                  )
                ),
                child: Center(child: Text('Container 1')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
