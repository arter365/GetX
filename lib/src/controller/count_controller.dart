import 'package:get/get.dart';  // 1) getx를 import한다.

enum NUM { FIRST, SECOND }

class Studio {
  String? name;
  int? postnum;
  Studio({this.name, this.postnum});
}

class CountController extends GetxController{
  // 옵저버패턴을 이용하여 도와준다고 보면 된다.
  RxInt count = 0.obs;  // obs는 Observable의 약자이다. 이렇게 하면 반응형으로 관리해 준다.
  // 그외 Rx자료형
  RxDouble _double = 0.0.obs;
  RxString str = "".obs;
  Rx<NUM> nums= NUM.FIRST.obs;
  Rx<Studio> studio = Studio().obs;
  RxList list = [].obs;

  void increase() {
    count++;
    // Rx자료형 사용법
    _double(1.0);
    nums(NUM.SECOND);
    studio(Studio(name: "tn", postnum: 12456));
    studio.update((_studio) { _studio!.name = "처음 배우는 GetX"; });
    list.add("test");
    list.addIf(studio.value.name == "처음 배우는 GetX", "Ok");
  }

  void putNumber(int value) {
    // count = value 이렇게 하지만 Observable를 사용할 때는 아래와 같이 사용한다.
    count(value);
  }

  // 이벤트 트리거를 할 수 있다. 그러기 위해 GetxController을 상속받는다.
  // GetController을 상속하면 생명주기를 사용 할 수 있다.
  // onInit()과 onClose()를 주로사용하며 onDelete는 알아서 해주기 때문에 신경쓰지 않아도 된다.
  @override
  void onInit() { // 실제로 값이 변경될 때만 호출된다.
    // 워커를 등록한다.
    ever(count, (_) => print("매번 호출"));   // ever(listener, callback)
    once(count, (_) => print("한번만 호출"));
    // 이벤트가 연속해서 발생하면 트리거 되지 않다가 정해진 시간(현재 1초) 동안 이벤트가 없으면 트리거 된다. (주로 검색에서 사용함)
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1));
    interval(count, (_) => print("변경되는 동안 정해진 time에 호출"), time: Duration(seconds: 1));
    super.onInit();
  }
}