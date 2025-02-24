import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/test_bloc.dart';
import '../bloc/test_event.dart';
import 'test_view.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) => Scaffold(
      body: SafeArea(
        child: BlocListener<TestBloc, TestState>(
          listener: (context, state) {
            // TODO: implement listener}
          },
          child: Column(
            children: [
              BlocBuilder<TestBloc, TestState>(
                builder: (context, state) {
                  return Container();
                },
              ),
              BlocSelector<TestBloc, TestState, dynamic>(
                // TODO: change dynamic type
                selector: (state) {
                  // TODO: return selected state based on the provided state.
                  return state.name;
                },
                builder: (context, state) {
                  // TODO: return widget here based on the selected state.
                  return Text(state.toString());
                },
              )
            ],
          ),
        ),
      ),
    ), child: const TestView());

  }
}
