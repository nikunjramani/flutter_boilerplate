import 'package:equatable/equatable.dart';

class TestState extends Equatable {
  final String name;

  const TestState({required this.name});

  TestState copyWith({
    String? name,
  }) {
    return TestState(
      name: name ?? this.name,
    );
  }

  @override
  List<Object> get props => [name];
}
