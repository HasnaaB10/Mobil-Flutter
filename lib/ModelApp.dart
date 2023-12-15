import 'package:flutter/material.dart';
import 'dart:math';
class ModelApp extends StatefulWidget {
  const ModelApp({Key? key}) : super(key: key);
  @override
  State<ModelApp> createState() => _ModelAppState();
}
class _ModelAppState extends State<ModelApp> {
  TextEditingController ctr_x1 = TextEditingController();
  TextEditingController ctr_x2 = TextEditingController();
  String res = "";
  classifieur(){
    double x1 = double.parse(ctr_x1.text);
    double x2 = double.parse(ctr_x2.text);
    setState(() {
      double c = 1/(1 + exp(-x1-x2));
      res = (c>0.5)?"1":"0";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("EMSI: TP ML"),),
    body: Container(margin: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            controller: ctr_x1,
            style: TextStyle(fontSize: 20,color: Colors.pink),
            decoration: InputDecoration(
                labelText: "x1",
                border: OutlineInputBorder(borderRadius:
                BorderRadius.all(Radius.circular(40)) )
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: ctr_x2,
            style: TextStyle(fontSize: 20,color: Colors.pink),
            decoration: InputDecoration(
                labelText: "x2",

                border: OutlineInputBorder(borderRadius:

                BorderRadius.all(Radius.circular(40)) )
            ),
          ),
          ElevatedButton(
              onPressed: classifieur ,
              child: Text("Classifier")),
          SizedBox(height: 20,),

          Text("Classe: $res", style: TextStyle(fontSize: 35,color:
          Colors.pink),)
        ],
      ),
    ),
    );
  }
}