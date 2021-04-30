import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/third_screen_bloc.dart';
import 'nested_pages/page1.dart';
import 'nested_pages/page2.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThirdScreenBloc thirdScreenBloc = BlocProvider.of<ThirdScreenBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Third screen"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () => thirdScreenBloc.add(Page1Event()),
                  child: Text("1 page")),
              ElevatedButton(
                  onPressed: () => thirdScreenBloc.add(Page2Event()),
                  child: Text("2 page")),
            ],
          ),
          Container(
            width: 300,
            height: 300,
            child: BlocBuilder<ThirdScreenBloc, ThirdScreenState>(
              builder: (context, state) {
                if (state is Page1State) {
                  return Page1();
                } else {
                  return Page2();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
