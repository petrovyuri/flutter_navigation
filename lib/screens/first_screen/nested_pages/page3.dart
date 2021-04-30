import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text("Первая страница"),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, "first", (route) => false)),
      ),
      appBar: AppBar(
        title: Text("Третья страница"),
      ),
    );
  }
}
