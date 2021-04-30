import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigator_event.dart';

part 'bottom_navigator_state.dart';

class BottomNavigatorBloc extends Bloc<BottomNavigatorEvent, AppNavigatorState> {
  BottomNavigatorBloc() : super(BottomNavigatorInitialState());

  @override
  Stream<AppNavigatorState> mapEventToState(
    BottomNavigatorEvent event,
  ) async* {
    if (event is BottomNavigatorFirstEvent) {
      yield BottomNavigatorFirstState();
    } else if (event is BottomNavigatorSecondEvent) {
      yield BottomNavigatorSecondState();
    } else if (event is BottomNavigatorThirdEvent) {
      yield BottomNavigatorThirdState();
    }
  }
}
