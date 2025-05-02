/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/counter_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImpl(this.homeLocalDataSource);

  @override
  Future<Either<Failure, CounterEntity>> incrementCounter() async {
    try {
      final counter = await homeLocalDataSource.incrementCounter();
      return right(counter);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CounterEntity>> decrementCounter() async {
    try {
      final counter = await homeLocalDataSource.decrementCounter();
      return right(counter);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
