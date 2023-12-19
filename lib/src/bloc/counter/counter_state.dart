import 'package:bloc/bloc.dart';
import 'package:flutter_with_bloc/src/bloc/counter/counter_event.dart';

class CounterState extends Bloc<CountEvent, int> {
  CounterState() : super(0) {
    on<CountIncrementPressed>((event, emit) => emit(state + 1));
    on<CountDecrementPressed>((event, emit) => emit(state - 1));
  }
}
