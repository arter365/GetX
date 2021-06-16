import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/binding_put_controller.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BindingPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<BindingPutController>(builder: (_) {
              return Text(
                _.count.toString(),
                style: TextStyle(fontSize: 40),
              );
            }),
            ElevatedButton(
              onPressed: () {
                // static 이전에 사용하던 방식
                // Get.find<BindingPutController>().increase();
                BindingPutController.to.increase(); // 이렇게 쉽게 사용 할 수 있다.
              },
              child: Text("BindingPage"),
            ),
          ],
        ),
      ),
    );
  }
}
