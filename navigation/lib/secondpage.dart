import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String text = "";
  SecondPage({super.key, required this.text});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("You're in second page, Data: ${widget.text}"),
      )
    );
  }
}