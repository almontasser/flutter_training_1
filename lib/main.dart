import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors App',
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 133),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff68716b),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(26),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(75, 0, 0, 0),
                  blurRadius: 4,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 33),
                Text(
                  'Colors App',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 33),
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Button(
                active: backgroundColor == Colors.blue,
                color: Colors.blue,
                text: 'Blue',
                changeColor: (color) {
                  setState(() {
                    backgroundColor = color;
                  });
                },
              ),
              Button(
                active: backgroundColor == Colors.yellow,
                color: Colors.yellow,
                text: 'Yellow',
                changeColor: (color) {
                  setState(() {
                    backgroundColor = color;
                  });
                },
              ),
              Button(
                active: backgroundColor == Colors.red,
                color: Colors.red,
                text: 'Red',
                changeColor: (color) {
                  setState(() {
                    backgroundColor = color;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// button class
class Button extends StatelessWidget {
  final bool active;
  final Color color;
  final String text;
  final Function changeColor;

  const Button(
      {Key? key,
      required this.active,
      required this.color,
      required this.text,
      required this.changeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: active ? Colors.white : Colors.transparent,
          textStyle: const TextStyle(
            fontSize: 18,
          ),
          foregroundColor: Colors.black,
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        onPressed: () {
          changeColor(color);
        },
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(text),
        ),
      ),
    );
  }
}
