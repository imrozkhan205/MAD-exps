import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = "Hello World";

  void changeMessage() {
    setState(() {
      message = 'You pressed the button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hello world app')),
      body: Center(child: Text(message, style: const TextStyle(fontSize: 24))),
      floatingActionButton: FloatingActionButton(
        onPressed: changeMessage,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
