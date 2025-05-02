/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/counter_entity.dart';
import '../repositories/home_repository.dart';

class IncrementCounter implements UseCase<CounterEntity, NoParams> {
  final HomeRepository homeRepository;

  IncrementCounter(this.homeRepository);

  @override
  Future<Either<Failure, CounterEntity>> call(NoParams params) =>
      homeRepository.incrementCounter();
}
