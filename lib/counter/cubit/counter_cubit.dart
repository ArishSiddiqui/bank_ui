import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() {
    return emit(
      state.copyWith(
        counter: state.counter + 1,
      ),
    );
  }

  void decrement() {
    print('Decrement with -1');
    return emit(
      state.copyWith(
        counter: state.counter - 1,
      ),
    );
  }
}
