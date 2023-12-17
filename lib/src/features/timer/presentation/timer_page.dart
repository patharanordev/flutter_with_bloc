import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:poc_bloc/src/features/timer/presentation/ticker.dart';
// import 'package:poc_bloc/src/bloc/timer/timer_bloc.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_view.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  // For owner state
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (_) => TimerController(ticker: const Ticker()),
  //     child: const TimerView(),
  //   );
  // }

  // For global state
  @override
  Widget build(BuildContext context) {
    return const TimerView();
  }
}
