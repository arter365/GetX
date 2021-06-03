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
                  // GetX가 없을 때 뒤로가는 방식
                  // StatelessWidget을 사용하면 build를 벗어났을 때 context를 사용할 수 없는 불편함이 있다.
                  // Navigator.of(context).pop();

                  // GetX로 뒤로가는 방식
                  Get.back();
                },
                child: Text("뒤로 이동")),
            ElevatedButton(
                onPressed: () {

                },
                child: Text("홈 이동")),
          ],
        ),
      ),
    );
  }
}
