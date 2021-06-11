import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/get_putasync_controller.dart';

class GetPutAsync extends StatelessWidget {
  const GetPutAsync({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get.putAsync"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print(Get.find<PutAsyncController>().hashCode);
                Get.find<PutAsyncController>().increase();
              },
              child: Text("Get.putAsync 버튼"),
            ),
          ],
        ),
      ),
    );
  }
  }
