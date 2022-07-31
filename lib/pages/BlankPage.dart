import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx_starter/controllers/PlayerController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class blankPage extends StatelessWidget {
  blankPage({Key? key}) : super(key: key);

  var count = 0.obs;
  void increment(){
    count++;
  }

  var person = PlayerController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(title: Text("Welcome")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Obx(
                  () => Text("${person.player.value.name}",
                  )
                  )
                ),
                Center(
                child: Obx(
                  () => Text("${person.player.value.type}",
                  )
                  )
                )
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed:() {
          person.Randomize();
          if (person.player.value.name=="Link") {
            Get.rawSnackbar(title: "Hero of Courage",message: "Link has been chosen");
          }
          }
          ),
        ),
       );
  }
}