import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NextPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("${Get.arguments.toString()}"),     // 숫자를 전달 받아서 표시 할 때
            // Text("${Get.arguments}"),                // 문자를 전달 받아서 표시 할 때
            Text("${Get.arguments['name']} : ${Get.arguments['age']}"),
            ElevatedButton(
                onPressed: () {
                  // GetX로 뒤로가는 방식
                  Get.back();
                },
                child: Text("Next 뒤로 이동")),
          ],
        ),
      ),
    );
  }
}
