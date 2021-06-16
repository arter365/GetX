import 'package:get/get.dart';

class BindingSeparationPutController extends GetxController{
  int count = 0;

  void increase(){
    count++;
    update();
  }
}