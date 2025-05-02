part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {
  final CounterEntity counter;

  HomeInitial(this.counter);
}

final class HomeCounterUpdated extends HomeState {
  final CounterEntity counter;

  HomeCounterUpdated(this.counter);
}

final class HomeFailure extends HomeState {
  final String error;

  HomeFailure(this.error);
}
