import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/user.dart';
import 'package:sample_route_manage/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Flutter 2.0의 Button 변화 :
            FlatButton -> TextButton , OutlineButton -> OutlinedButton , RaisedButton -> ElevatedButton
             */
            /*
            () {}와 () => {}의 차이 :
            => : 익명함수의 값을 반환하는데 사용된다. 예) var size = (int s) => s * 2;
            () {} : 여러줄에 걸처 코드를 작성 할 수 있다.
              예) var size = (int s) {
                    return s * 2;
                  }
             */
            ElevatedButton(
                onPressed: () {
                  // GetX가 없을 때 이동하는 방식
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (_) => FirstPage()));

                  // GetX로 이동하는 방식
                  Get.to(() => FirstPage());
                },
                child: Text("일반적인 라우트")),
            ElevatedButton(
                onPressed: () {
                  // GetX가 없을 때 이동하는 방식
                  // Navigator.of(context).pushNamed("/first");

                  // GetX로 이동하는 방식
                  Get.toNamed("/first");
                },
                child: Text("Named 라우트")),
            ElevatedButton(
                onPressed: () {
                  // ---- GetX로 이동하면서 arguments전달 ----
                  // Get.toNamed("/next", arguments: 22);          // 숫자도 전달.
                  // Get.toNamed("/next", arguments: "twotone");   // 문자를 전달.
                  // Get.toNamed("/next", arguments: {"name": "twotone", "age": "22"}); // 키벨류 전달
                  // ---- 객체를 전달 ----
                  // 1단계 -----------------------------------
                  // User user = new User("홍길동", 27);
                  // Get.toNamed("/next", arguments: user);
                  // 2단계 -----------------------------------
                  // Get.toNamed("/next", arguments: new User("홍길동", 27));
                  // 3단계 -----------------------------------
                  Get.toNamed("/next", arguments: User("홍길동", 27));
                },
                child: Text("Arguments 전달")),
            ElevatedButton(
                onPressed: () {
                  // 웹페이지를 만들때 동적 url을 사용하여 id를 전달하는 방식으로 아래와 같이 만든다.
                  Get.toNamed("/user/28357?name=둘리&age=22");
                },
                child: Text("동적 url")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/reactivestate");
                },
                child: Text("반응형 상태관리")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/dependencymanage");
                },
                child: Text("의존성 관리")),

            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/binding");
                },
                child: Text("바인딩 테스트")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/bindingseparation");
                },
                child: Text("바인딩 분리 테스트")),
          ],
        ),
      ),
    );
  }
}
