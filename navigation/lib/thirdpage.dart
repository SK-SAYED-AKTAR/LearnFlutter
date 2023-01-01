import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  int? val;
  ThirdPage({super.key, this.val});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to third page... The Value is: $val"),
            TextButton(onPressed: (){
              Navigator.of(context).pop(20);
            }, child: const Text("Go Back"))
          ],
        )
      )
    );
  }
}