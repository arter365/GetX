import 'package:get/get.dart';

// GetxController 대신 GetxService를 상속받는다.
class ServiceController extends GetxService{
  RxInt count = 0.obs;

  void increase(){
    count++;
  }
}
