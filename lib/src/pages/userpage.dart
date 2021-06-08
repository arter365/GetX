import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/user.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 웹페이지를 만들때 동적url을 사용하여 id를 전달하는 방식으로 아래와 같이 만든다.
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요 "),
            Text("${Get.parameters['age']}"),

            ElevatedButton(
                onPressed: () {
                  // GetX로 뒤로가는 방식
                  Get.back();
                },
                child: Text("UserPage 뒤로 이동")),
          ],
        ),
      ),
    );
  }
}
