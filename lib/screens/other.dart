import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final GetController _getController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
                    "${_getController.name.value} was Clicked ${_getController.counter.value} times")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Open other Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
