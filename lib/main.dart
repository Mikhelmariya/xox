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
        body: Center(
          child: Container(
            height: 180,
            width: 180,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                Container(
                  color: Colors.black,
                  height: 60,
                  width: 60,
                ),
                // ListView.builder(
                //     itemCount: 9,
                //     itemBuilder: ((context, index) {
                //       return Container(
                //         color: Colors.black,
                //         height: 60,
                //         width: 60,
                //       );
                //     }))
              ],
            ),
          ),
        ),
      ),
    ),
  );
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Container(
//         ///height: MediaQuery.of(context).size.height,
//         height: 600,
//         width: 360,
//         color: Colors.green,
//         child: Center(
//           child: Container(
//             height: 180,
//             width: 180,
//             color: Colors.grey,
//             child: GridView.count(
//               crossAxisCount: 3,
//               crossAxisSpacing: 11,
//               mainAxisSpacing: 11,
//               children: [
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.white,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.green,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 60,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
