import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/get_create_controller.dart';
import 'package:sample_route_manage/src/controller/get_lazyput_controller.dart';
import 'package:sample_route_manage/src/controller/get_put_controller.dart';
import 'package:sample_route_manage/src/controller/get_putasync_controller.dart';
import 'package:sample_route_manage/src/pages/dependencys/get_create.dart';
import 'package:sample_route_manage/src/pages/dependencys/get_lazyput.dart';
import 'package:sample_route_manage/src/pages/dependencys/get_put.dart';
import 'package:sample_route_manage/src/pages/dependencys/get_putasync.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to( () =>
                    GetPut(),
                    // 페이지로 이동시 binding을 통해 필요한 의존성을 주입해 주고 나올 때 제거함. (싱글턴)
                    binding: BindingsBuilder(() {
                      Get.put(PutController());
                      //Get.put(() => DependencyController());
                    }),
                  );
                },
                child: Text("Get.put")),
            ElevatedButton(
                onPressed: () {
                  Get.to( () =>
                    GetLazyPut(),
                    binding: BindingsBuilder(() {
                      // builder방식으로 구현해야 한다. lazyPut은 사용할 때 메모리에 올리고 나올 때 제거함. (싱글턴)
                      Get.lazyPut<LazyPutController>(
                          () => LazyPutController());
                    }),
                  );
                },
                child: Text("Get.lazyPut")),
            // 비동기 처리 후 put
            ElevatedButton(
                onPressed: () {
                  Get.to( () =>
                    GetPutAsync(),
                    binding: BindingsBuilder(() {
                      // put과 같은 방식으로 동작하지만 비동기로 controller를 처리하고 페이지 이동을 한다. 나올 때 제거함. (싱글턴)
                      Get.putAsync<PutAsyncController>(() async {
                        // 5초후 controller가 초기화 되는 것을 확인 할 수 있다. (처리가 큰것을 비동기로 처리가능)
                        await Future.delayed(Duration(seconds: 5));
                        return PutAsyncController();
                      });
                    }),
                  );
                },
                child: Text("Get.putAsync")),
            ElevatedButton(
                onPressed: () {
                  Get.to( () =>
                    GetCreate(),
                    binding: BindingsBuilder(() {
                      // put과 같은 방식으로 동작하지만 싱글턴이 아니다. 누를 때 마다 controller를 만들어 낸다.
                      Get.create<CreateController>(
                          () => CreateController());
                    }),
                  );
                },
                child: Text("Get.create")),
          ],
        ),
      ),
    );
  }
}
