import 'package:bloc/bloc.dart';
import 'package:domain/src/bloc/counter/counter_state.dart';

/// Example bloc writed with [Cubit]
/// This bloc updated [CounterState] when methods [increment] or [decrement] are called.
class CounterBloc extends Cubit<CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  void onChange(Change<CounterState> change) {
    super.onChange(change);
  }

  void increment() => emit(CounterState(state.counter + 1));

  void decrement() => emit(CounterState(state.counter - 1));
}
