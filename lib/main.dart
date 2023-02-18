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

bool value = false;

class XOX extends StatefulWidget {
  XOX();
  @override
  State<XOX> createState() => _XOXState();
}

String text = "images/black1.png";

class _XOXState extends State<XOX> {
  List<String> display = ['', '', '', '', '', '', '', '', ''];

  Container getContainer(String text, bool value) {
    return Container(
      height: 60,
      width: 60,
      child: Image.asset(text),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var XorO = 0;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/image1.png"),
                radius: 25,
              ),
              Spacer(),
              CircleAvatar(
                backgroundImage: AssetImage("images/image0.png"),
                radius: 25,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Container(
              height: 180,
              width: 180,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        text = _tapped(index);
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(text),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _tapped(int index) {
    setState(() {
      if (value && display[index] == '') {
        text = "images/image0.png";
      } else {
        text = "images/image1.png";
      }
      value = !value;
    });
    return text;
  }
}
