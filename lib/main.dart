import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            //appBar: AppBar(),
            body: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
                width: 360,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ))));
  }
}
