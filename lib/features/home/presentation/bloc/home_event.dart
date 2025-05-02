/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeIncrementCounter extends HomeEvent {}

final class HomeDecrementCounter extends HomeEvent {}
