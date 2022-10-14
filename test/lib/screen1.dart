import 'package:flutter/material.dart';
import 'package:test/screen2.dart';

class screen1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        str1: '',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String str1;

  const MyHomePage({Key? key, required this.str1}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return screen2("data from screen 1");
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Screen 1"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                str1,
                style: const TextStyle(fontSize: 30),
              ),
              InkWell(
                child: const Text(
                  "Go to Next Screen 2",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
                onTap: () => selectScreen(context),
              ),
            ],
          )),
    );
  }
}
