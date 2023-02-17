import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 127, 222, 130),
        appBar: AppBar(
          title: Center(child: Text("Tic Tac Toe")),
          backgroundColor: Colors.black,
        ),
        body: XOX(),
      ),
    ),
  );
}

var XorO = 0;
String text = "images/black1.png";

class XOX extends StatefulWidget {
  @override
  State<XOX> createState() => _XOXState();
}

class _XOXState extends State<XOX> {
  @override
  Widget build(BuildContext context) {
    var XorO = 0;
    return Center(
      child: Container(
        height: 180,
        width: 180,
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: [
            GestureDetector(
              child: Container(height: 60, width: 60, child: Image.asset(text)),
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
              child: getContainer(text),
            ),
          ],
        ),
      ),
    );
  }
}

Container getContainer(String text) {
  return Container(
    height: 60,
    width: 60,
    child: Image.asset(text),
  );
}
