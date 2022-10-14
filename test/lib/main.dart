import 'package:flutter/material.dart';
import 'package:test/screen1.dart';
import 'package:test/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx, int x) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      if (x == 1) {
        return screen1("information 1");
      } else {
        return screen2("Informtion 2");
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("main Screen"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: const Text(
                  "Go to Next Screen 1",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
                onTap: () => selectScreen(context, 1),
              ),
              InkWell(
                child: const Text(
                  "Go to Next Screen 2",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
                onTap: () => selectScreen(context, 2),
              ),
            ],
          )),
    );
  }
}
