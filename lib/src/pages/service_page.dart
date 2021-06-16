import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/service_controller.dart';

class ServicePage extends GetView<ServiceController> {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ServicePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: Text("Getx Service ++"),
            ),
            ElevatedButton(
              onPressed: () {
                // 서비스를 초기화 시킬 수 있는 메서드는 reset() 밖에 없다. 하지만 모든 Controller가 초기화 된다.
                Get.reset();
              },
              child: Text("Getx Service Clear"),
            ),
          ],
        ),
      ),
    );
  }
}
