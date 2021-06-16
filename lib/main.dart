import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/binding/binding_page.dart';
import 'package:sample_route_manage/src/controller/binding_put_controller.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/bindingpage/binding.dart';
import 'package:sample_route_manage/src/pages/bindingpage/bindingseparation.dart';
import 'package:sample_route_manage/src/pages/dependencys/dependency_manage_page.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
import 'package:sample_route_manage/src/pages/reactive_state_page.dart';
import 'package:sample_route_manage/src/pages/userpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        // Named Route를 할 때는 아래의 home을 주석처리한다.
        // home: Home(),

        // ----------- Named Route -----------
        initialRoute: "/",

        // GetX 이전의 Route 방식
        /*
        routes: {
          "/": (context) => Home(),
          "/first": (context) => FirstNamedPage(),
          "/second": (context) => SecondNamedPage(),
        }
        */

        // GetX를 사용한 Route방식
        getPages: [
          GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
          GetPage(
              name: "/first",
              page: () => FirstNamedPage(),
              transition: Transition.zoom),
          GetPage(
              name: "/second",
              page: () => SecondNamedPage(),
              transition: Transition.zoom),
          GetPage(
              name: "/next",
              page: () => NextPage(),
              transition: Transition.zoom),
          // 웹페이지를 만들때 동적 url을 사용하여 id를 전달하는 방식으로 아래와 같이 만든다.
          GetPage(
              name: "/user/:uid",
              page: () => UserPage(),
              transition: Transition.zoom),
          GetPage(
              name: "/reactivestate",
              page: () => ReactiveStatePage(),
              transition: Transition.zoom),
          GetPage(
              name: "/dependencymanage",
              page: () => DependencyManagePage(),
              transition: Transition.zoom),

          // 바인딩 처리 방법 1 : dependency_manage_page.dart에서 사용했던 페이지 이동 시 Binding 처리
          // 바인딩 처리 방법 2 : 아래와 같이 Routing 시 Binding 처리
          GetPage(
              name: "/binding",
              page: () => BindingPage(),
              transition: Transition.zoom,
              binding: BindingsBuilder(() {
                Get.put(BindingPutController());
              })),
          // 바인딩 처리방법 3 : Routing 시 Binding 처리는 동알하지만 Binding 페이지를 분리하여 사용한 예제.
          GetPage(
              name: "/bindingseparation",
              page: () => BindingSeparationPage(),
              transition: Transition.zoom,
              binding: BindingPageImpl()),
        ]);
  }
}
