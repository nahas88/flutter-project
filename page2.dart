import 'package:flutter/material.dart';
import 'package:flutter2/page3.dart';

class screen2 extends StatefulWidget {
   screen2({super.key});


  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
    int count = 0;
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      actions: [
        IconButton(onPressed: (){Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> screen3())
        );
        },
        icon:Icon(Icons.next_plan))
      ],
      backgroundColor: Colors.blue,
    ),
    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Click the button you like",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            Text(count.toString(),
                style: TextStyle(
                   
                    fontSize: 25,
                    fontWeight: FontWeight.w500)
                    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                });
              },
               child: Text(
                "Add",
                
               ),
               style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
               ),

               ElevatedButton(onPressed: (){
                setState(() {
                  count--;
                });
              },
               child: Text(
                "Sub",
                
               ),
               style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
               ), 
               ElevatedButton(onPressed: (){
                setState(() {
                  count=0;
                });
              },
               child: Text(
                "Reset",
                
               ),
               style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
               ),
              
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}