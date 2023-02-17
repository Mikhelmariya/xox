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
        body: XOX(
          index: 0,
        ),
      ),
    ),
  );
}

bool value = false;

class XOX extends StatefulWidget {
  final bool value = false;
  final int index;

  XOX({required this.index});
  @override
  State<XOX> createState() => _XOXState();
}

class _XOXState extends State<XOX> {
  String text = "images/black1.png";
  void _changeImage() {
    setState(() {
      text = 'new_image.png';
    });
  }

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
              child: getContainer(text, value),
              onTap: () {
                setState(() {
                  text = 'images/image0.png';
                  value = true;
                  // getContainer(text, value);
                });
              },
            );
          },
        ),
      ),
    );
  }
}

Container getContainer(String text, bool value) {
  // if (value == true) {
  return Container(
    height: 60,
    width: 60,
    child: Image.asset(text),
  );
  // } else {
  //   return Container(
  //     height: 60,
  //     width: 60,
  //     child: Image.asset(text),
  //   );
  // }
}
