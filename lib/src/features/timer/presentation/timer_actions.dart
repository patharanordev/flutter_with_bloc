import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/src/bloc/timer/timer_bloc.dart';

class TimerActions extends StatelessWidget {
  const TimerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerController, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...switch (state) {
              TimerInitial() => [
                  FloatingActionButton(
                    heroTag: 'timer_start_button',
                    child: const Icon(Icons.play_arrow),
                    onPressed: () => context
                        .read<TimerController>()
                        .add(TimerStarted(duration: state.duration)),
                  )
                ],
              TimerRunInProgress() => [
                  FloatingActionButton(
                    heroTag: 'timer_inprogress2pause_button',
                    child: const Icon(Icons.pause),
                    onPressed: () => context
                        .read<TimerController>()
                        .add(const TimerPaused()),
                  ),
                  FloatingActionButton(
                    heroTag: 'timer_inprogress2reset_button',
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<TimerController>().add(const TimerReset()),
                  ),
                ],
              TimerRunPause() => [
                  FloatingActionButton(
                    heroTag: 'timer_paused2resume_button',
                    child: const Icon(Icons.play_arrow),
                    onPressed: () => context
                        .read<TimerController>()
                        .add(const TimerResumed()),
                  ),
                  FloatingActionButton(
                    heroTag: 'timer_paused2reset_button',
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<TimerController>().add(const TimerReset()),
                  ),
                ],
              TimerRunComplete() => [
                  FloatingActionButton(
                    heroTag: 'timer_complete2replay_button',
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<TimerController>().add(const TimerReset()),
                  ),
                ]
            },
          ],
        );
      },
    );
  }
}
