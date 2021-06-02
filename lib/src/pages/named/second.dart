import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

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
                  // GetX가 없을 때 홈으로 이동하며 히스토리 지우기
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (_) => Home()),
                  //     (route) => false);

                  // GetX로 홈으로 이동하며 히스토리 지우기
                  // 홈으로 이동하면서 히스토리를 지운다. (홈에서 뒤로가기 정보를 지운것이다.)
                  // 회원가입이나 스플레시 페이지 처럼 한번 봤다가 다시 볼 필요가 없는 화면에서 사용한다.
                  Get.offAll(Home());
                },
                child: Text("홈 이동")),
          ],
        ),
      ),
    );
  }
}
