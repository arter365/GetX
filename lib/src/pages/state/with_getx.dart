import 'package:flutter/material.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          Text("0", style: TextStyle(fontSize: 50)),
          ElevatedButton(onPressed: () {}, child: Text("+", style: TextStyle(fontSize: 30)))
        ],
      ),
    );
  }
}
