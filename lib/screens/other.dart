import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counterCountrollers.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
                    "Screen was Clicked ${_counterController.counter.value} times")),
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
