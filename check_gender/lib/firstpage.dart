import 'dart:convert';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController nameController = TextEditingController();
  String result = "";
  bool inWaiting = false;

  void predictTheGender() async{
      setState(() {inWaiting = true;});
      String url = "https://api.genderize.io/?name=${nameController.text}";
      final response = await http.get(Uri.parse(url));
      var responseData = json.decode(response.body);
      if(response.statusCode == 200){
        result = "Predicted Gender: ${responseData['gender'].toString().toUpperCase()}.";
        result = "$result\n\nThe probability: ${responseData['probability']*100}%";
        setState(() {inWaiting = false;});
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(title: const Text("SAYED")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: () {},
                style: NeumorphicStyle(
                  color: Colors.grey[850],
                  shape: NeumorphicShape.convex,
                  boxShape:
                      NeumorphicBoxShape.stadium(),
                ),
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  "Predict Gender",
                  style: TextStyle(color: Colors.white),
                )),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Enter your name..."),
              ),
              
              ElevatedButton(onPressed: predictTheGender, child: Text(inWaiting==true ? "Please wait...":"Predict Gender")),
              Text(result)
            ],
          ),
        )
      )
    );
  }
}