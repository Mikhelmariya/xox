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
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 9,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: getContainer(text),
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                });
              },
            );
          },
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
