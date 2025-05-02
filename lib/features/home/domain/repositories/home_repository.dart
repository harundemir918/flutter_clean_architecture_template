/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/counter_entity.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, CounterEntity>> incrementCounter();
  Future<Either<Failure, CounterEntity>> decrementCounter();
}
