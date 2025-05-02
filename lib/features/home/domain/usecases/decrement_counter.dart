import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/counter_entity.dart';
import '../repositories/home_repository.dart';

class DecrementCounter implements UseCase<CounterEntity, NoParams> {
  final HomeRepository homeRepository;

  DecrementCounter(this.homeRepository);

  @override
  Future<Either<Failure, CounterEntity>> call(NoParams params) =>
      homeRepository.decrementCounter();
}
