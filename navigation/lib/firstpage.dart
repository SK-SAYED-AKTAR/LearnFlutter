import 'package:flutter/material.dart';
import 'package:navigation/secondpage.dart';
import 'package:navigation/thirdpage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var returnData=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SAYED :)"),),
      body: Center(
        child: Column(
            children: [
              const Text("This is a first/home page"),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SecondPage(text: "Sayed")
                  )
                );
              }, child: const Text("Go to Second Page")),

              TextButton(onPressed: () async{
                
                final retVal = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context)=>ThirdPage(val: 12)
                  ));
                setState(() {
                  returnData = retVal;
                });
              }, child: const Text("Go to Third Page")),

              Text("Return Data: $returnData")
            ],
          ),
      )
      );
  }
}