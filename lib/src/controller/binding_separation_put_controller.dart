import 'package:get/get.dart';

class BindingSeparationPutController extends GetxController{
  RxInt count = 0.obs;

  void increase(){
    count++;
  }
}
