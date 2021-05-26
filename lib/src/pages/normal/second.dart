
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text("뒤로 이동")
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("홈 이동")
            ),
          ],
        ),
      ),
    );
  }
}