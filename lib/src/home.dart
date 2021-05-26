import 'package:flutter/material.dart';

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
            ElevatedButton(onPressed: () {}, child: Text("일반적인 라우트")),
          ],
        ),
      ),
    );
  }
}
