import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/get_create_controller.dart';

class GetCreate extends StatelessWidget {
  const GetCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get.create"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print(Get.find<CreateController>().hashCode);
                Get.find<CreateController>().increase();
              },
              child: Text("Get.create 버튼"),
            ),
          ],
        ),
      ),
    );
  }
}
