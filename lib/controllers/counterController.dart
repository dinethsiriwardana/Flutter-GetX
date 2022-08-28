import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetController extends GetxController {
  var counter = 0.obs;
  var name = "".obs;
  void increment() {
    counter++;
  }

  void reset(reset) {
    counter.value = reset;
  }
}
