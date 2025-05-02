/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/counter_entity.dart';
import '../../domain/usecases/decrement_counter.dart';
import '../../domain/usecases/increment_counter.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IncrementCounter _incrementCounter;
  final DecrementCounter _decrementCounter;

  HomeBloc({
    required IncrementCounter incrementCounter,
    required DecrementCounter decrementCounter,
  }) : _incrementCounter = incrementCounter,
       _decrementCounter = decrementCounter,
       super(HomeInitial(CounterEntity(0))) {
    on<HomeEvent>((event, emit) => emit(HomeInitial(CounterEntity(0))));
    on<HomeIncrementCounter>(_onIncrementCounter);
    on<HomeDecrementCounter>(_onDecrementCounter);
  }

  void _onIncrementCounter(HomeEvent event, Emitter<HomeState> emit) async {
    final res = await _incrementCounter(NoParams());

    res.fold(
      (failure) => emit(HomeFailure(failure.message)),
      (counter) => emit(HomeCounterUpdated(counter)),
    );
  }

  void _onDecrementCounter(HomeEvent event, Emitter<HomeState> emit) async {
    final res = await _decrementCounter(NoParams());

    res.fold(
      (failure) => emit(HomeFailure(failure.message)),
      (counter) => emit(HomeCounterUpdated(counter)),
    );
  }
}
