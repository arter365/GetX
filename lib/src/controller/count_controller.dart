// 1) getx를 import한다.
import 'package:get/get.dart';

class CountController {
  // 옵저버패턴을 이용하여 도와준다고 보면 된다.
  RxInt count = 0.obs;  // obs는 Observable의 약자이다. 이렇게 하면 반응형으로 관리해 준다.

  void increase() {
    count++;
  }

  void putNumber(int value) {
    // count = value 이렇게 하지만 Observable를 사용할 때는 아래와 같이 사용한다.
    count(value);
  }
}