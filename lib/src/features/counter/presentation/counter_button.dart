import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/src/bloc/counter/counter_event.dart';
import 'package:flutter_with_bloc/src/bloc/counter/counter_state.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Feature Counter')),
      body: Center(child: BlocBuilder<CounterState, int>(
        builder: (context, state) {
          return Text('$state', style: textTheme.displayMedium);
        },
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              heroTag: 'counter_increment_button',
              key: const Key('counter_widget_increment'),
              child: const Icon(Icons.add),
              onPressed: () =>
                  context.read<CounterState>().add(CountIncrementPressed())),
          const SizedBox(height: 8),
          FloatingActionButton(
              heroTag: 'counter_decrement_button',
              key: const Key('counter_widget_decrement'),
              child: const Icon(Icons.remove),
              onPressed: () =>
                  context.read<CounterState>().add(CountDecrementPressed()))
        ],
      ),
    );
  }
}
