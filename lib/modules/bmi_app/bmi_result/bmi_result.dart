import 'dart:math';

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final int height;
  final int age;
  final double weight;
  final double result;

  BmiResult(
      {required this.isMale,
      required this.height,
      required this.age,
      required this.weight, required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender: ${isMale ? 'Male' : 'Female'}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            Text('Height: ${height}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            Text('Weight: ${weight}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            Text('Age: ${age}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0,vertical: 10.0),
              child: Container(color: Colors.grey,height: 1.0,),
            ),
            Text('BMI=${result.toStringAsFixed(1)}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.blue[900]),),

          ],
        ),
      ),
    );
  }
}
