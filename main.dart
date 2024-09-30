import 'package:flutter/material.dart';
import 'package:flutter2/page2.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen1(),
    );
  }
}

class screen1 extends StatefulWidget {
  screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => screen2()));
            },
            icon: Icon(Icons.skip_next),
          )
        ],
        title: Text("project1"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "click here",
              style: TextStyle(
                  
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            Text(count.toString(),
                style: TextStyle(
                   
                    fontSize: 25,
                    fontWeight: FontWeight.w500)
                    )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
