import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/get_lazyput_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get.lazyPut"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 초기화 되기 전에 누르지 못하게 막아두거나 안전하게 사용하지 않는다.
            ElevatedButton(
              onPressed: () {
                print(Get.find<LazyPutController>().hashCode);
                Get.find<LazyPutController>().increase();
              },
              child: Text("Get.lazyPut 버튼"),
            ),
          ],
        ),
      ),
    );
  }
}
