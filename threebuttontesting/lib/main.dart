

import 'package:flutter/material.dart';





void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   final qlist1 = <String> [
    'what is your first job',
    'what is your name',
    'what is your age',
  ];
 final qlist2 = <String> [
    'what is your first job',
    'what is your name',
    'what is your age',
  ];
 final qlist3 = <String> [
    'what is your first job',
    'what is your name',
    'what is your age',
  ];
  
  var flag=0;
 int index1=0;
 int index2=0;
 int index3=0;

  void changeData(flag){
    setState(() {
       
      switch (flag) {
        case 0:index1++;
          break;
        case 1:index2++;
         break;
        case 2:index3++;
        break; 
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('testing button'),
        ),
        body: Center(
            child: Column(
          children: [
            Text(qlist1[index1]),
            ElevatedButton(
              onPressed: ()  => changeData(0),
              child: Text('button1')
            ),
            Text(qlist2[index2]),
            ElevatedButton(
              onPressed: () => changeData(1),
              child: Text('button2')
            ),
            Text(qlist3[index3]),
            ElevatedButton(
              onPressed: () => changeData(2),
              child: Text('button3')
            ),
          ],
        )),
      ),
    );
  }
}


