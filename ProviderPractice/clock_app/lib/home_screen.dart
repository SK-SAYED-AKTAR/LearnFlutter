import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String time = "";

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) { 
      setState(() {
        int hour = 0;
        if(DateTime.now().hour > 12){
          hour = DateTime.now().hour - 12;
        }else{
          hour = DateTime.now().hour;
        }
        time = "$hour:${DateTime.now().minute}:${DateTime.now().second}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Clock App", style: TextStyle(fontSize: 22),)),
      body: Center(
        child: Text(time, style: const TextStyle(fontSize: 22, color: Colors.blue),),
      )
    );
  }
}