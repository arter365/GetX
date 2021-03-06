import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // GetX로 뒤로가는 방식
                  Get.back();
                },
                child: Text("Named 뒤로 이동")),
            ElevatedButton(
                onPressed: () {
                  Get.offAllNamed("/");
                },
                child: Text("Named 홈 이동")),
          ],
        ),
      ),
    );
  }
}
