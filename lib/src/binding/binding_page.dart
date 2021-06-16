import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/binding_separation_put_controller.dart';

class BindingPageImpl implements Bindings {
  @override
  void dependencies() {
    Get.put(BindingSeparationPutController());
  }
}
