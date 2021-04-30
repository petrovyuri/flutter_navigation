import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'third_screen_event.dart';

part 'third_screen_state.dart';

class ThirdScreenBloc extends Bloc<ThirdScreenEvent, ThirdScreenState> {
  ThirdScreenBloc() : super(ThirdScreenInitial());

  @override
  Stream<ThirdScreenState> mapEventToState(
    ThirdScreenEvent event,
  ) async* {
    if (event is Page1Event) {
      yield Page1State();
    } else if (event is Page2Event) {
      yield Page2State();
    }
  }
}
