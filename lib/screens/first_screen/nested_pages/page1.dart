import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Перейти на вторую страницу"),
          onPressed: () => Navigator.pushNamed(context, "/page2"),
        ),
      ),
      appBar: AppBar(
        title: Text("Первая страница"),
      ),
    );
  }
}
