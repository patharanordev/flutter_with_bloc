import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:poc_bloc/src/bloc/counter/counter_controller.dart';
import 'package:poc_bloc/src/features/counter/presentation/counter_button.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  // For owner state
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (_) => CounterState(),
  //     child: const CounterButton(),
  //   );
  // }

  // For global state
  @override
  Widget build(BuildContext context) {
    return const CounterButton();
  }
}
