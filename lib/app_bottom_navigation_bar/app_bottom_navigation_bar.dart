import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigation/screens/circle_red_screen/circle_red_screen.dart';

import 'bottom_navigator_bloc/bottom_navigator_bloc.dart';

class AppBottomNavigationBar extends StatefulWidget {
  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    BottomNavigatorBloc _appNavigatorBloc =
        BlocProvider.of<BottomNavigatorBloc>(context);
    return BottomNavigationBar(
      fixedColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (value) {
        _tapBottomNavigationBar(value, _appNavigatorBloc);
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Colors.grey), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outlined, color: Colors.grey),
            label: ""),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              child: Text(
                "",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
              minRadius: 20,
            ),
            label: ""),
      ],
    );
  }

  void _tapBottomNavigationBar(
      int inValue, BottomNavigatorBloc inNavigatorBloc) {
    setState(() {
      _currentIndex = inValue;
      switch (inValue) {
        case 0:
          inNavigatorBloc.add(BottomNavigatorFirstEvent());
          break;
        case 1:
          inNavigatorBloc.add(BottomNavigatorSecondEvent());
          break;
        case 2:
          inNavigatorBloc.add(BottomNavigatorThirdEvent());
          break;
        case 3:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CircleRedScreen()));
          break;
      }
    });
  }
}
