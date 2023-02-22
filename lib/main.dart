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
int flag = 1;
String winner = " Who will be the winner??";

class XOX extends StatefulWidget {
  XOX();
  @override
  State<XOX> createState() => _XOXState();
}

//String text = "images/black1.png";

class _XOXState extends State<XOX> {
  List<String> display = [
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
    "images/black1.png",
  ];

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
        Container(
          height: 30,
          width: 190,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 11, 91, 52),
              borderRadius: BorderRadius.circular(60)),
          child: Center(
            child: Text(
              winner,
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
            ),
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
                itemBuilder: (BuildContext context, int index) =>
                    new GestureDetector(
                  onTap: () {
                    setState(() {
                      _tapped(index);
                      print(index);

                      _isWinner(index);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(display[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _tapped(int index) {
    setState(() {
      if (value && display[index] == "images/black1.png") {
        display[index] = "images/image0.png";
        print("inside if");
      } else {
        display[index] = "images/image1.png";
        print("inside else");
      }
      value = !value;
    });
  }

  void _isWinner(int index) {
    //Across rows
    if (display[0] == display[1] &&
        display[2] == display[1] &&
        display[0] == "images/image0.png") {
      print("loop 1");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[0] == display[1] &&
        display[2] == display[1] &&
        display[0] == "images/image1.png") {
      print("LOOP 2 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[3] == display[4] &&
        display[5] == display[3] &&
        display[3] == "images/image1.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[3] == display[4] &&
        display[5] == display[3] &&
        display[3] == "images/image0.png") {
      print("LOOP 4 IMAGE 0");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[6] == display[7] &&
        display[8] == display[6] &&
        display[6] == "images/image0.png") {
      print("LOOP 5 IMAGE 0");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[6] == display[7] &&
        display[8] == display[6] &&
        display[6] == "images/image1.png") {
      print("LOOP 6 IMAGE 1");
      setState(() {
        winner = "Player O is the winner";
      });
      //Across diagonals
    } else if (display[0] == display[4] &&
        display[8] == display[0] &&
        display[0] == "images/image1.png") {
      print("LOOP 7 IMAGE 1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[2] == display[4] &&
        display[6] == display[2] &&
        display[2] == "images/image1.png") {
      print("LOOP 8 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[2] == display[4] &&
        display[6] == display[2] &&
        display[2] == "images/image0.png") {
      print("LOOP 9 IMAGE1");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[0] == display[4] &&
        display[8] == display[0] &&
        display[0] == "images/image0.png") {
      print("LOOP 10 IMAGE 1");
      setState(() {
        winner = "Player X is the winner";
      });
    }
    // Across column
    else if (display[0] == display[3] &&
        display[6] == display[3] &&
        display[3] == "images/image1.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[0] == display[3] &&
        display[6] == display[3] &&
        display[3] == "images/image0.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[1] == display[4] &&
        display[7] == display[1] &&
        display[1] == "images/image1.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[1] == display[4] &&
        display[7] == display[1] &&
        display[1] == "images/image0.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player X is the winner";
      });
    } else if (display[2] == display[5] &&
        display[8] == display[2] &&
        display[2] == "images/image1.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player O is the winner";
      });
    } else if (display[2] == display[5] &&
        display[8] == display[2] &&
        display[2] == "images/image0.png") {
      print("LOOP 3 IMAGE1");
      setState(() {
        winner = "Player X is the winner";
      });
    } else {
      setState(() {
        winner = "Well done both of you!!";
      });
    }
  }
}
