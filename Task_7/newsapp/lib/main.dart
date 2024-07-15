import 'package:flutter/material.dart';
import 'package:newsapp/screens/homeScreen.dart';
import 'package:newsapp/screens/news.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget{
  app({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        useMaterial3: false
      ),
    );
  }
}