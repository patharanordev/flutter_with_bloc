import 'package:flutter/material.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_page.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Timer',
        theme: ThemeData(
            colorScheme: const ColorScheme.light(
                primary: Color.fromRGBO(72, 74, 126, 1))),
        home: const TimerPage());
  }
}
