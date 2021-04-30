import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Перейти на третью страницу"),
          onPressed: () => Navigator.pushNamed(context, "/page3"),
        ),
      ),
      appBar: AppBar(
        title: Text("Вторая страница"),
      ),
    );
  }
}