import 'package:bloc/bloc.dart';
import 'router_event.dart';
import 'router_state.dart';

class RouterController extends Bloc<RoutingEvent, RoutingState> {
  RouterController() : super(InCounterPageState()) {
    on<NavigateToCounterPageEvent>((event, emit) => emit(InCounterPageState()));
    on<NavigateToTimerPageEvent>((event, emit) => emit(InTimerPageState()));
    on<NavigateToInfiniteListPageEvent>(
        (event, emit) => emit(InInfiniteListPageState()));
  }
}
