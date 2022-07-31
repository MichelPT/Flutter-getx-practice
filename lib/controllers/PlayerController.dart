import 'package:flutter_getx_starter/models/Player.dart';
import 'package:get/get.dart';

class PlayerController extends GetxController {
  var player= Player("Zelda","Princess of Hyrule").obs;

  void Randomize(){
    player.update((val) {
      player.value.name = "Link";
      player.value.type = "The Hero of Hyrule";
    });
  }
}