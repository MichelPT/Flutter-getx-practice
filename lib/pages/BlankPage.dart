import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class blankPage extends StatelessWidget {
  blankPage({Key? key}) : super(key: key);

  var count = 0.obs;
  void increment(){
    count++;
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(title: Text("Welcome")),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Obx(
                  () => Text("$count"))
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed:() {
            Get.snackbar("Snackbar", "Here is the message");
          },),
        ),
       );
  }
}