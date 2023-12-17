import 'package:flutter/material.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_actions.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_text.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_view_background.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature Timer')),
      body: const Stack(
        children: [
          TimerViewBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(child: TimerText()),
              ),
              TimerActions(),
            ],
          )
        ],
      ),
    );
  }
}
