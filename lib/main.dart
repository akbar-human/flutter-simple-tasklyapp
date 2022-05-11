import 'package:flutter/material.dart';
import 'package:taskly/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasklyist',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), 
    );
  }

}