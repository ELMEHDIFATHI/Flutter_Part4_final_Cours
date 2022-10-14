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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App02"),
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(child: Image.asset("x.png")),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.red,
                  child: Text("text 1"),
                )),
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.green,
              child: const Text("text 3"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.yellow,
              child: Text("text 2"),
            )
          ],
        ),
      ),
    );

    /*
  DateTime? _selectedDate;
  void _datePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
    */
  }

  /*
    return Scaffold(
      appBar: AppBar(
        title: const Text("App02"),
      ),
      body: Center(
        child: RaisedButton(
            padding: const EdgeInsets.all(20),
            color: Colors.black,
            onPressed: _datePicker,
            child: Text("$_selectedDate",
                style: const TextStyle(color: Colors.white, fontSize: 30))),
      ),
    );
    */

}
