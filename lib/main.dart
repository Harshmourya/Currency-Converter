import 'package:currency_convereter/currenyConvrter.dart';
import 'package:flutter/material.dart';

                // color fomate in flutter -->> color(0xAARRGGBB)
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currenyConvrter(),
    ); 
  }
}
