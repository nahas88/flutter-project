import 'package:flutter/material.dart';
import 'package:flutter2/page7.dart';

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  final _number1= TextEditingController();
  final _number2= TextEditingController();
   final _sum= TextEditingController();
    final _sub= TextEditingController();
     final _mul= TextEditingController();
      final _div= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 155, 220),
      ),
      body:  SafeArea(
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lets Do Some Calculations",
                style: TextStyle(color: Colors.purple),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _number1,
                      decoration: InputDecoration(
                        
                        labelText: "Number1",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                       keyboardType: TextInputType.number,
                      controller: _number2,
                      decoration: InputDecoration(
                        
                        labelText: "Number2",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 5,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  _number1.text="";
                  _number2.text="";
                  _sum.text="";
                  _sub.text="";
                  _mul.text="";
                  _div.text="";
                  
                });
              }, child: Text("Clear"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent
              ),
              ),
              Text("---Calculations----"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _sum.text = (int.parse(_number1.text)+int.parse(_number2.text)).toString();
                      });
                    },
                    child: Text("Sum"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _sum,
                      readOnly: true,
                      decoration: InputDecoration(
                          labelText: "Sum", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _sub.text = (int.parse(_number1.text)-int.parse(_number2.text)).toString();
                      });
                    },
                    child: Text("Subtraction"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white
                        ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _sub,
                       readOnly: true,
                      decoration: InputDecoration(
                          labelText: "Sub", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _mul.text = (int.parse(_number1.text)*int.parse(_number2.text)).toString();
                      });
                    },
                    child: Text(
                      "Multiplication",
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _mul,
                       readOnly: true,
                      decoration: InputDecoration(
                          labelText: "Mul", border: OutlineInputBorder(),
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _div.text = (double.parse(_number1.text)/double.parse(_number2.text)).toStringAsFixed(3);
                      });
                    },
                    child: Text("Division"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _div,
                       readOnly: true,
                      decoration: InputDecoration(
                          labelText: "Div", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> page7())
                  );
                }, 
                child: Icon(Icons.skip_next_outlined))
            ],
          ),
        ),
      ),
    );
  }
}
