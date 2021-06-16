import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/binding_separation_put_controller.dart';

// StatelessWidget 대신 GetView<사용 할 Controller>를 상속받으면 Controller에 쉽게 접근할 수 있다.
class BindingSeparationPage extends GetView<BindingSeparationPutController> {
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
            Obx(
                () => Text(
                  controller.count.toString(),
                  style: TextStyle(fontSize: 40),
                ),
            ),
            ElevatedButton(
              onPressed: () {
                // 아래와 같이 사용이 가능하다.
                controller.increase();
              },
              child: Text("BindingSeparationPage++"),
            ),
          ],
        ),
      ),
    );
  }
}
