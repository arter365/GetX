import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
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
          GetPage(name: "/first", page: () => FirstNamedPage(), transition: Transition.zoom),
          GetPage(name: "/second", page: () => SecondNamedPage(), transition: Transition.zoom),
          GetPage(name: "/next", page: () => NextPage(), transition: Transition.zoom),
          // 웹페이지를 만들때 동적 url을 사용하여 id를 전달하는 방식으로 아래와 같이 만든다.
          GetPage(name: "/user/:uid", page: () => UserPage(), transition: Transition.zoom),
        ]);
  }
}
