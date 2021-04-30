import 'package:flutter/material.dart';

import 'nested_pages/page1.dart';
import 'nested_pages/page2.dart';
import 'nested_pages/page3.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        late Widget page;
        if (settings.name == "/page2") {
          page = Page2();
        } else if (settings.name == "/page3") {
          page = Page3();
        } else {
          page = Page1();
        }
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return page;
          },
          settings: settings,
        );
      },
    );
  }
}
