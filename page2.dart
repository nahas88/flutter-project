import 'package:flutter/material.dart';
import 'package:flutter1/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>page3()
                  )
                  
                  );
            }, 
            child:Text("Nextpage"),
             )
          ],
        ),

      )
      ),
    );
  }
}