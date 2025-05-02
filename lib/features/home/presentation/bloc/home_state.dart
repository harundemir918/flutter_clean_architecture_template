/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

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
