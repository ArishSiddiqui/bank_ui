import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(
        state.copyWith(counter: state.counter + 1),
      );
    });
    on<CounterDecrementEvent>(_decrement);
  }

  _decrement(CounterBlocEvent event, Emitter<CounterState> emit) {
    print(state.counter);
      emit(
        state.copyWith(counter: state.counter - 1),
      );
    }
}
