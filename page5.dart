import 'package:flutter/material.dart';
import 'package:flutter2/page6.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  final _data= TextEditingController();
  // String answer ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=> page6())
          );
          }
          , icon: Icon(
            Icons.skip_next_sharp
          ))
        ],
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: _data,
                  decoration: InputDecoration(labelText: "enter something",
                  border: OutlineInputBorder(),
                  ),
                  
              ),
            ),
            ElevatedButton(onPressed: (){
              
             setState(() {
               _data.text = _data.text.toString().split('').reversed.join();
             });
             
            }, 
            child: Text("reverse"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
            // Text("answer will show here $answer"),
          ],
        ),
      )),
    );
  }
}