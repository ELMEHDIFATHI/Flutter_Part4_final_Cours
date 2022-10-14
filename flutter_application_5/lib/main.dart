import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget info(String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title, style: const TextStyle(fontSize: 30)),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.pink, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text("Grid View")),
        body: Container(
          padding: const EdgeInsets.only(top: 15),
          child: GridView(
            children: [
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
              info("text1", Colors.amber),
              info("text2", Colors.red),
              info("text3", Colors.black),
              info("texT5", Colors.blue),
            ],
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
          ),
        ));
  }
}
