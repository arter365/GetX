import 'package:get/get.dart';

class BindingPutController extends GetxController{
  // 싱글턴이라 하나만 존재하기 때문에 static으로 선언해 준다.
  static BindingPutController get to => Get.find();

  int count = 0;

  void increase(){
    count++;
    update(); // Rx 반응형이 아니면 update()를 적어줘야 화면이 갱신된다.
  }
}