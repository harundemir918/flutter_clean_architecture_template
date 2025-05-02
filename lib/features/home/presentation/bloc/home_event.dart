part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeIncrementCounter extends HomeEvent {}

final class HomeDecrementCounter extends HomeEvent {}
