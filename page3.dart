import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/cars5.jpg")
                )
          ),
          child: Column(
          children: [

          ],
          ),
        )
        ),
    );
  }
}