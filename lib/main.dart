import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';

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
          GetPage(name: "/", page: () => Home()),
          GetPage(name: "/first", page: () => FirstNamedPage()),
          GetPage(name: "/second", page: () => SecondNamedPage()),
        ]);
  }
}
