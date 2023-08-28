// import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:bmicalc(),);
  }
}
class bmicalc extends StatefulWidget {


  const bmicalc({super.key});

  @override
  State<bmicalc> createState() => _bincalcState();
}

class _bincalcState extends State<bmicalc> {
   double w=1,h=1;
   double r=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Bim Calculator",style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold),),
      ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Center(
              child: Container(
                child: Text("Welcome to my BIM Calculator",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 30,),
            Container(child: Text("Enter your Hight:",style: TextStyle(fontWeight: FontWeight.bold),)),
            TextField(
              onChanged:(value){
                setState(() {
                  h = double.tryParse(value) ?? 0;
                  });},
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "input your hight ",
                  filled: true,
                  fillColor: Colors.blue),

            ),

            SizedBox(height: 30,),
            Container(child: Text("Enter your Weight:",style: TextStyle(fontWeight: FontWeight.bold),)),
            TextField(onChanged:(value){
          setState(() {
          w = double.tryParse(value) ?? 0;});},
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "input your Weight ",
                  filled: true,
                  fillColor: Colors.blue),

            ),

            SizedBox(height: 30,),
            Container(
              child: ElevatedButton(onPressed: () {
                setState(() {
                  r =   w / ((h*100)*(h*100));
                });
                },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text("calculate",style: TextStyle( color: Colors.black) ),
                  SizedBox(height: 30,),

                ],

              ),
              ),
            ),
            SizedBox(height: 40,),
            Text("Your Score IS:$r",style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30) )





          ],),
        ) ,

    );
  }

}

String calc (String h,String w){
  double hight=double.parse(h);
  double weight=double.parse(w);
  String result;
  result =  (weight/(hight*hight)).toString();

  return result;
}


