import 'package:flutter/material.dart';
import 'package:flutter1/page2.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 33, 243, 89),
          title: Text(
            "My Application",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.person_2_outlined)),
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.padding_outlined),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.camera_alt_rounded),
            )
          ],
        ),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Click Here"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                        )
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                    child: Text("Submit")),
                Image(
                    width: 200,
                    height: 200,
                    image: AssetImage("assets/cars5.jpg")),
                Image(
                  image: AssetImage("assets/cars2.jpg"),
                  height: 200,
                  width: 200,
                ),
                Image(
                  image: AssetImage("assets/cars1.jpg"),
                  height: 200,
                  width: 200,
                ),
                Image(image: NetworkImage(""))
              ],
            ),
          ),
        )));
  }
}
