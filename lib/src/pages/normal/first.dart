
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  /*
  기본적으로 플러터의 위젯은 생성자에서 Key 매개변수를 받을 수 있다. 하지만 그렇게 많이 사용되지는 않는다.
  위젯이 위젯트리에서 위치를 변경하더라도 Key는 상태정보를 유지한다. 따라서 리스트의 컬렉션이 수정될 때 스크롤 위치를 기억하거나,
  상태를 기억해야 할 때 Key는 유용하게 사용될 수 있다.
   */
  // 상수생성자이며 Key - value 형식으로 만들었다.
  const FirstPage({required Key key}) : super(key: key);  // required는 생성자가 기본값이 없고 null이 아닐 경우 사용한다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text("다음페이지 이동")
            ),
          ],
        ),
      ),
    );
  }
}