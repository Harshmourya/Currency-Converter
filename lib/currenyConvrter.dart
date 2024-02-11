// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';

class currenyConvrter extends StatefulWidget {
  const currenyConvrter({super.key});

  @override
  State<currenyConvrter> createState() => _currenyConvrterSate();
}

class _currenyConvrterSate extends State<currenyConvrter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const sborder = OutlineInputBorder(
        // if i use final on the place of const then i have to remove Scaffold const && sborder is local variable
        borderSide: BorderSide(
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
        shadowColor: const Color.fromARGB(255, 255, 254, 254),
        // elevation: 22,
        toolbarHeight: 90,
        centerTitle: true,
        title: const Text(
          '\n Currency\n   Converter \n',
          style: TextStyle(
              fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result !=0 ? '\u20B9 ${result.toStringAsFixed(2)}' : result.toStringAsFixed(0),
              style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              // padding: EdgeInsets.symmetric(horizontal: 6.2),
              padding: const EdgeInsets.all(7.2),
              child: TextField(
                controller: textEditingController,
                cursorColor: Colors.amber,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 23,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  focusedBorder: sborder,
                  enabledBorder: sborder,
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black87,
                    size: 30,
                  ),
                  hintText: 'Enter Amount',
                  hintStyle: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                
                setState(() {
                result = double.parse(textEditingController.text) * (83.1);                  
                });
              },
              // style :const ButtonStyle( // it anther method for styling button
              //   backgroundColor : MaterialStatePropertyAll(Colors.deepOrange),
              //   foregroundColor: MaterialStatePropertyAll(Colors.black87), // it use for color text
              //   maximumSize: MaterialStatePropertyAll(Size(double.infinity, 40)),
              //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(9.6))
              //   ))
              // ),
              style: OutlinedButton.styleFrom(
                  // but in '.styleFrom' method we donot need add 'MaterialStatePropertyAll()' everywhere
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Colors.black87, // it use for color text
                  maximumSize: const Size(double.infinity, 60),
                  shape: const CircleBorder(),
                  ),
              child: const Icon(Icons.currency_rupee_outlined),
            )
          ],
        ),
      ),
    );
  }
} 

// class currenyConvrterS extends StatelessWidget {
//   const currenyConvrterS({super.key});

//   @override
//   Widget build(BuildContext context) {
//   }
// }
