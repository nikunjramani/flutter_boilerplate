import 'package:flutter_bloc/flutter_bloc.dart';

import 'test_event.dart';
import 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(const TestState(name: "")) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<TestState> emit) async {
    emit(state.copyWith(name: "init"));
  }
}
