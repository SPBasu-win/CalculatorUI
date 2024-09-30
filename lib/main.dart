import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Calculator(),
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool isDarkMode = true; // Track the theme

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 320,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: isDarkMode ? Colors.black : Colors.white, // Conditional color
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.light_mode,
                      color: isDarkMode ? Colors.white : Colors.black),
                  Icon(Icons.nightlight_round,
                      color: isDarkMode ? Colors.white : Colors.black),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '420 × 45',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '18,900',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('C', Colors.purple, isDarkMode),
                CalculatorButton('⌫', Colors.purple,isDarkMode),
                CalculatorButton('%', Colors.purple, isDarkMode),
                CalculatorButton('÷', Colors.purple, isDarkMode),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('7', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('8', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('9', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('×', Colors.purple, isDarkMode),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('4', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('5', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('6', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('-', Colors.purple, isDarkMode),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('1', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('2', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('3', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('+', Colors.purple, isDarkMode),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton('↻', Colors.purple, isDarkMode),
                CalculatorButton('0', Colors.lightBlueAccent, isDarkMode),
                CalculatorButton('.', Colors.lightBlueAccent, isDarkMode ),
                CalculatorButton('=', Colors.purple, isDarkMode),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final bool isDarkMode;

  CalculatorButton(this.text, this.color, this.isDarkMode);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          foregroundColor: MaterialStateProperty.all(isDarkMode ? Colors.white : Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}