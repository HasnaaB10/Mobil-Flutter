import 'package:flutter/material.dart';
import 'dart:math';
class SoftMaxApp extends StatefulWidget {
  const SoftMaxApp({Key? key}) : super(key: key);
  @override
  State<SoftMaxApp> createState() => _SoftMaxAppState();
}
class _SoftMaxAppState extends State<SoftMaxApp> {
  TextEditingController ctr_x1 = TextEditingController();
  TextEditingController ctr_x2 = TextEditingController();
  TextEditingController ctr_x3 = TextEditingController();
  TextEditingController ctr_x4 = TextEditingController();


  double res = 0.0;
  double res2 =0.0;
  double res3 =0.0;
  double res4 =0.0;
  CP(){
    double x1 = double.parse(ctr_x1.text);
    double x2 = double.parse(ctr_x2.text);
    double x3 = double.parse(ctr_x3.text);
    double x4 = double.parse(ctr_x4.text);

    setState(() {
      res = exp(x1)/(exp(x1)+exp(x2)+exp(x3)+exp(x4));
      res2 = exp(x2)/(exp(x1)+exp(x2)+exp(x3)+exp(x4));
      res3 = exp(x3)/(exp(x1)+exp(x2)+exp(x3)+exp(x4));
      res4 = exp(x4)/(exp(x1)+exp(x2)+exp(x3)+exp(x4));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EMSI: TP SM"),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child:Column(
            children:[
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
              Text("P1: ${res.toStringAsFixed(2)}", style: TextStyle(fontSize: 35,color:
              Colors.pink),),
              TextField(
                controller: ctr_x2,
                style: TextStyle(fontSize: 20,color: Colors.pink),
                decoration: InputDecoration(
                    labelText: "x2",

                    border: OutlineInputBorder(borderRadius:

                    BorderRadius.all(Radius.circular(40)) )
                ),
              ),
              SizedBox(height: 20,),
              Text("P2: ${res2.toStringAsFixed(2)}", style: TextStyle(fontSize: 35,color:
              Colors.pink),),
              TextField(
                controller: ctr_x3,
                style: TextStyle(fontSize: 20,color: Colors.pink),
                decoration: InputDecoration(
                    labelText: "x3",

                    border: OutlineInputBorder(borderRadius:

                    BorderRadius.all(Radius.circular(40)) )
                ),
              ),
              SizedBox(height: 20,),
              Text("P3: ${res3.toStringAsFixed(2)}", style: TextStyle(fontSize: 35,color:
              Colors.pink),),
              TextField(
                controller: ctr_x4,
                style: TextStyle(fontSize: 20,color: Colors.pink),
                decoration: InputDecoration(
                    labelText: "x4",
                    border: OutlineInputBorder(borderRadius:
                    BorderRadius.all(Radius.circular(40)) )
                ),
              ),
              SizedBox(height: 20,),
              Text("P4: ${res4.toStringAsFixed(2)}", style: TextStyle(fontSize: 35,color:
              Colors.pink),),
              ElevatedButton(
                  onPressed: CP,
                  child: Text("OK")),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}