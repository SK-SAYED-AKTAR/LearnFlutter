import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notebook")),
      body: Column(
        children: [
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 2, 
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
                Container(height: 100, width: 100, decoration: const BoxDecoration(color: Colors.blue)),
              ],
            )
        ],
      ), 
    );
  }
}