import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_rounded,size: 35,color: Colors.white,),
        ),
      ),
    );
  }
}
