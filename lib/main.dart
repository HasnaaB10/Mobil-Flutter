import 'package:tp1_flutter_sgm/ModelApp.dart';
import 'package:flutter/material.dart';
import 'package:tp1_flutter_sgm/SoftMaxApp.dart';



void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app model',
      home: SoftMaxApp(),
    );
  }
}