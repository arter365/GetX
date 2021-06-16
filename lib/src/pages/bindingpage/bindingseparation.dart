import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/binding_separation_put_controller.dart';

class BindingSeparationPage extends StatelessWidget {
  const BindingSeparationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BindingSeparationPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<BindingSeparationPutController>().increase();
              },
              child: Text("BindingSeparationPage"),
            ),
          ],
        ),
      ),
    );
  }
}
