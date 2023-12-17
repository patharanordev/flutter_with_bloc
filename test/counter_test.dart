// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:poc_bloc/src/bloc/counter/counter_event.dart';
import 'package:poc_bloc/src/bloc/counter/counter_state.dart';

void main() {
  group('Counter', () {
    late CounterState controller;

    setUp(() => {controller = CounterState()});

    test('initial state is zero', () => {expect(controller.state, 0)});

    blocTest(
      'emits [1] when CounterIncrementPressed is added',
      build: () => controller,
      act: (bloc) => bloc.add(CountIncrementPressed()),
      expect: () => [1],
    );

    blocTest(
      'emits [-1] when CountDecrementPredded is added',
      build: () => controller,
      act: (bloc) => bloc.add(CountDecrementPressed()),
      expect: () => [-1],
    );
  });
}
