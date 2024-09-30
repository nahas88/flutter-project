import 'package:flutter/material.dart';
import 'package:flutter2/page9.dart';

class page8 extends StatefulWidget {
  const page8({super.key});

  @override
  State<page8> createState() => _page8State();
}

class _page8State extends State<page8> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=> page9())
              );
            }, 
            icon: Icon(Icons.skip_next_rounded))
        ],
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
                     Text("Gender Selection",
                     style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      
                     ),)
                     ,
              RadioListTile(
                title: Text("Male"),
                value: "Male", 
                groupValue: gender,
                 onChanged: (String? value){
                  setState(() {
                    gender = value;
                  });
                 }
                 ),
                   RadioListTile(
                title: Text("Female"),
                value: "Female", 
                groupValue: gender,
                 onChanged: (String? value){
                  setState(() {
                    gender = value;
                  });
                 }
                 ),  RadioListTile(
                title: Text("Others"),
                value: "Others", 
                groupValue: gender,
                 onChanged: (String? value){
                  setState(() {
                    gender = value;
                  });
                 }
                 ),
                 ElevatedButton(
                  onPressed: (){
                 
          
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(
                          milliseconds: 3000,
                        ),
                        action: 
                        SnackBarAction(label: "Go back", onPressed: (){
                         
                        }),
                        elevation: 10,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.purple,
                        content: Text("Your selected gender is $gender")
                      )
                      );
                  },
                   child: Text("submit")
                   ),
                  Text("Maritial Status",
                 style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent
                  
                 ), 
                 ),
                 RadioListTile(
                  title: Text("Married"),
                  value: "Married",
                   groupValue: status,
                    onChanged: (String? value){
                      setState(() {
                        status = value;
                      });
                    }
                    ),
                      RadioListTile(
                  title: Text("Unmarried"),
                  value: "Unmarried",
                   groupValue: status,
                    onChanged: (String? value){
                      setState(() {
                        status = value;
                      });
                    }
                    ),
                    ElevatedButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context).
                        showSnackBar(
                          
                          SnackBar(
                            elevation: 10,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.green,
                            content: Text("Your Maritial status is $status"))
                        );
                      },
                       child: Text("Submit"))
            ],
          ),
        )
      ),
    );
  }
}