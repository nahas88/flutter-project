import 'package:flutter/material.dart';
import 'package:flutter2/page10.dart';
import 'package:flutter2/page7.dart';

class page9 extends StatefulWidget {
  const page9({super.key});

  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  String? answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("how are you ",
            style: TextStyle(
              fontSize: 15,
            ),
            ),
            RadioListTile(
              title: Text("Answer1"),
              value: "answer1", 
              groupValue: answer,
               onChanged: (String? value){
                setState(() {
                  answer = value;
                });
               }
               ),
                 RadioListTile(
                  title: Text("Answer2"),
              value: "answer2", 
              groupValue: answer,
               onChanged: (String? value){
                setState(() {
                  answer = value;
                });
               }
               ),
                 RadioListTile(
                  title: Text("Answer3"),
              value: "answer3", 
              groupValue: answer,
               onChanged: (String? value){
                setState(() {
                  answer = value;
                });
               }
               ),
                 RadioListTile(
                  title: Text("Answer4"),
              value: "answer4", 
              groupValue: answer,
               onChanged: (String? value){
                setState(() {
                  answer = value;
                });
               }
               ),
               ElevatedButton(
                onPressed: (){
                  if(answer=="answer3"){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=> page10()));
                  }
                  else{
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(
                        milliseconds: 3000
                      ),
                      backgroundColor: Colors.green,
                      behavior:SnackBarBehavior.floating ,
                      elevation: 10,
                      
                      content:Text("You clicked wrong answer")
                      )
                      );
                  }
                },
               
                child: Text("Submit"))
            
          ],
        )),
    );
  }
}