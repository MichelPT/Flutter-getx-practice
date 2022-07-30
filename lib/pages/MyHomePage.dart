import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_storage/get_storage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name = "damn good";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GetX Testing",
      home: Scaffold(
        appBar: AppBar(title: Text("GetX")),
        body: ListView(
          children: [
            Center(
              child: Text("")
            ),

          ],
        ),
      ),
    );
  }
}