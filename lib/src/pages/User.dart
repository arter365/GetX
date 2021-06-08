// Dart 요약

/*
Null safety :
  1. 모든 변수는 null이 될 수 없으며,  non-nullable 변수에는 null 값을 할당할 수 없음.
  2. non-nullable 변수를 위한 null check가 필요 없음.
  3. "Class 내의 변수"는 반드시 선언과 동시에 초기화를 시켜야 함.
 */

// Dart에는 public, private, protected 키워드가 없다.
import 'package:flutter/material.dart';

class User {
  // 상수선언
  final int PRICE1 = 1000;
  static const int PRICE2 = 2000;

  late String name;         // 초기화 지연
  int? age;                 // ? nullable type
  // 식별자를 비공개로 하려면 _를 적는다.
  int _grade = 0;            // 초기화 되면 사용시 null check 필요 없다는 메시지 뜬다.

  // 생성자 (약식으로 표현가능 끝에 ;)
  User(this.name, this.age);

  /* 자바처럼 생성자를 만들 수 있다.
  User(String name, int age){
    this.name = name;
    this.age = age;
  }
  */

  String nameChange(String? name) {     // 파라메터로 null이 올 수 있다고 하는 순간 null check하라고 뜬다.
    if(name == null)                    // 컴파일러가 null 체크를 하라고 하면 적어준다.
      this.name = 'need a name';
    else
      this.name = name;
    return name!.toUpperCase();         // null이 아니라는 확신이 있다는 뜻으로 !을 적는다.
  }

  // 아래와 같이 named parameter는 선택적으로 전달 할 수 있는 값이다.
  void valueChange1(String name, {int? age, int? grade}) {
      this.name = name;
      this.age = age;
      // grade는 선언 시 not null이기 때문에 null check를 해야 한다.
      if(grade != null)
        this._grade = grade;
  }

  // positional Parameters는 옵셔널로 사용 할 수 있고 전달하지 않으면 기본값이 들어간다.
  void valueChange2(String name, [int? age, int grade = 50]) {
    this.name = name;
    this.age = age;
    // grade는 선언 시 not null이기 때문에 null check를 해야 한다.
    if(grade != null)
      this._grade = grade;
  }

  /*
  @override
  String toString() {
    // TODO: implement toString
    // return this.name + " : " + this.age.toString() + " : " + this.grade.toString();
    return "name: $name - age: $age - grade: $grade";
  }
  */

  // 아래와 같이 이중 화살표 사용 가능.
  @override
  String toString() => "name: $name - age: $age - grade: $_grade";
}

void main(){
  User user1 = new User("test", 12);
  User user2 = User("생략", 30);  // Dart2에서 new 생략가능.

  print(user1);  // name: test - age: 12 - grade: 0
  user1.valueChange1("twotone",grade: 30);  // named parameter를 사용시 변수명: 이렇게 사용함.
  print(user1);  // twotone - age: null - grade: 30
  user1.valueChange2("factorysalad", 12);
  print(user1);  // factorysalad - age: 12 - grade: 50
}

/*
자료형
List : 다트의 array는 list로 대체
Set : 순서가 없고 중복 없는 collection
Map : key, value 형태를 가지는 collection

Stream 사용가능.
 */