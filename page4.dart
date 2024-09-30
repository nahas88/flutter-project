import 'package:flutter/material.dart';
import 'package:flutter2/page5.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
   final _txtnumber = TextEditingController();
   String sol ="";
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> screen5()));}, icon: Icon(Icons.abc_sharp))],
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Multiplication Table",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.purpleAccent,
                  fontSize: 25,
                ),
              ),

              Container (
                width: 300,        
                child: TextField(
                  controller: _txtnumber,
                  decoration: InputDecoration(
                    labelText: "enter the number",
                          border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent
                ),
                onPressed: (){
                  int number = int.parse(_txtnumber.text);
                  int multi = 0;
                  sol="";
                  for(int i=1; i<=10;i++){
                    multi = i * number;
                    sol += "$i X $number = $multi\n";
                  }
                  setState(() {
                    sol;
                  });

                }, 
                child: Text("Submit")
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    
                  ),
                  onPressed: (){
                    setState(() {
                      sol="";
                      _txtnumber.text="";
                    });
                  },
                   child: Text("Clear")
                   ),
                Text(
                  "$sol",


                )
            ],
          
          ),
        )
        ),
    );
  }
}