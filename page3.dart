import 'package:flutter/material.dart';
import 'package:flutter2/page4.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> { 
  bool _hide=true;
  final _txtvalue=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=> page4())
            );
          }, 
          icon: Icon(Icons.skip_next_sharp)
          )
        ],
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 400,
            
            child: Column(
              children: [
                
                TextField(
                  obscureText: _hide,
                  controller: _txtvalue,
                  decoration: InputDecoration(
                      labelText: "enter your name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.verified_user_sharp),
                      suffixIcon: IconButton(
                      onPressed: () {setState(() {
                        if (_hide==true){
                          _hide=false ;
                        }
                        else{
                          _hide=true;
                        }
                        }
                      
                      );
                      }, 
                      icon: Icon(Icons.remove_red_eye_sharp))
                      ),
                ),
                Text("you entered data=${_txtvalue.text.toString()}"
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _txtvalue.text;
                      });
                    },
                    child: Text("submit"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
