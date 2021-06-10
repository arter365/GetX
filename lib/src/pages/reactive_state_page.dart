import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller.dart';

class ReactiveStatePage extends StatelessWidget {
  const ReactiveStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30)),
            // Obx는 별도로 타입을 지정하지 않고 컨트롤러에서 Obs로 선언한 옵저버블의 변화를 감지했을 때 즉시 업데이트를 해준다.
            // 단, Obx를 사용하게 되면 반드시 옵저버블을 선언한 그 값을 안에 넣어줘야 한다.
            // Text("0", style: TextStyle(fontSize: 50)), // 이렇게 사용하는 문장을 아래와 같이 리액티브하게 바꿔준다.
            Obx(() => Text("${Get.find<CountController>().count.value}", style: TextStyle(fontSize: 50))),
            ElevatedButton(
                onPressed: () {
                  Get.find<CountController>().increase();
                },
                child: Text("+", style: TextStyle(fontSize: 30))),
          ],
        ),
      ),
    );
  }
}
