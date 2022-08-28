import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counterController.dart';
import 'package:getx/screens/other.dart';

class HomeScreen extends StatelessWidget {
  //get data from counterController.dart
  final GetController getController = Get.put(GetController());
  final TextEditingController inputName = TextEditingController();
  String get inputnametxt => inputName.text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        //Column as get widgets
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(getController.name.value == ""
                  ? ""
                  : "Hi ${getController.name.value}"),
            ),
            Center(
              child: Text("Click: ${getController.counter.value}"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => OtherScreen());
              },
              child: Text("Open other Screen"),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: inputName,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                getController.name.value = inputnametxt;
              },
              child: Text("Set Name"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
