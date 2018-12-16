import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              'Calculator',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
          body: Container(
              child: Column(children: [
            Container(

                color: Colors.grey,
                child: TextField(
                  cursorColor: Colors.blue,
                  style: TextStyle(fontSize: 70),
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 80,horizontal: 10),
                child: Column(children: [
              symbolRow('1', '2', '3', '+'),
              symbolRow('4', '5', '6', '-'),
              symbolRow('7', '8', '9', 'x'),
              symbolRow('%', '0', '^', '/'),
            ]))
          ])))));
}

Widget rowElement(String s) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child:
    Text(
      s,
      style: TextStyle(
        fontSize: 70,
        foreground: Paint()
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget symbol(String s) {
  return Padding(
      padding: EdgeInsets.only(left: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        splashColor: Colors.green,
        highlightColor: Colors.green,
        child: Center(
          child: rowElement(s)),
        onTap: () {
          print('something');

        },
      ));
}

Widget symbolRow(String s1, String s2, String s3, String s4) {
  return Row(
    children: [
      symbol(s1),
      symbol(s2),
      symbol(s3),
      symbol(s4),
    ],
  );
}
