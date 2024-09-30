import 'package:flutter/material.dart';
import 'package:flutter2/page8.dart';

class page7 extends StatefulWidget {
  const page7({super.key});

  @override
  State<page7> createState() => _page7State();
}

class _page7State extends State<page7> {
  final _num = TextEditingController();
  String solution ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=> page8())
                  );
            },
             icon: Icon(
              Icons.skip_next_outlined
             )
             )
        ],
      ),
      body: SafeArea(
        child: Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Center(
              
             
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Armstrong Number Checking",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500
                  ),)
                  ,
                  TextField(
                    controller: _num,
                    
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      
                      labelText: "Enter a Number",
                      border: OutlineInputBorder(),
                      
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                   int number=int.parse(_num.text);
                   int temp = number;
                   int rem=0;
                   int ans=0;
                   solution = "";
                   while(number !=0){
                    rem = number%10;
                    ans += (rem*rem*rem);
                    number = number~/10;
                   }
                  setState(() {
                   solution =(ans==temp)?"The number $temp is armstrong":"the number $temp is not armstrong";
                  });
                  }
                  , child:Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 187, 232, 24),
                    foregroundColor: Colors.black
                  ), 
                  ),
                  Text("$solution"
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Text(
                    "Armstrong number between",
                    style:TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 20,

                    ) ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       SizedBox(
                        width: 100,
                         child: TextField(
                                             
                                             
                                             keyboardType: TextInputType.number,
                                             decoration: InputDecoration(
                                               
                                               labelText: "Enter starting number",
                                               border: OutlineInputBorder(),
                                               
                                             ),
                                           ),
                       ),
                   SizedBox(
                    width: 100,
                     child: TextField(
                                       
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        
                        labelText: "Enter ending number",
                        border: OutlineInputBorder(),
                        
                      ),
                                       ),
                   ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: (){},
                     child: Text("submit")
                     ),
                     Text("output")
                 
                ],
                
                
              ),
            ),
          ),
        )
      ),
    );
  }
}