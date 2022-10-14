import 'package:flutter/material.dart';
import 'package:test/screen1.dart';

class screen2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        str2: '',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String str2;

  const MyHomePage({Key? key, required this.str2}) : super(key: key);
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return screen1();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Screen 2"),
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
                onTap: () => selectScreen(context),
              ),
            ],
          )),
    );
  }
}
