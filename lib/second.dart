import 'package:flutter/material.dart';
import 'package:test_app21_10/thirdly.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: const MyHomePageState(),
    );
  }
}
