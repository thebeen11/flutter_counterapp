import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void press() {
    setState(() {
      number = number + 1;
    });
  }

  void refreshcount() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          actions: [
            IconButton(icon: Icon(Icons.refresh), onPressed: refreshcount)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.blue[400],
                    child: Text(
                      "COUNT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: press),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
