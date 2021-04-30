import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'app_bottom_navigation_bar/bottom_navigator_bloc/bottom_navigator_bloc.dart';
import 'screens/first_screen/first_screen.dart';
import 'screens/second_screen/second_screen.dart';
import 'screens/third_screen/bloc/third_screen_bloc.dart';
import 'screens/third_screen/third_screen.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => BottomNavigatorBloc(),
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocBuilder<BottomNavigatorBloc, AppNavigatorState>(
          builder: (context, state) {
            if (state is BottomNavigatorThirdState) {
              return BlocProvider(
                  create: (context) => ThirdScreenBloc(),
                  child: ThirdScreen());
            } else if (state is BottomNavigatorSecondState) {
              return SecondScreen();
            } else {
              return FirstScreen();
            }
          },
        ),
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
