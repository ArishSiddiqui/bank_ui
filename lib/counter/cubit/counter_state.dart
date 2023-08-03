part of 'counter_cubit.dart';

// @immutable
// abstract class CounterBlocState {}

// class CounterBlocInitial extends CounterBlocState {}

class CounterState extends Equatable {
  final int counter;
  const CounterState({
    this.counter = 0,
  });

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object> get props => [counter];
}
