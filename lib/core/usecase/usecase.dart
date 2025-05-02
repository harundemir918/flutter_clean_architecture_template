/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:fpdart/fpdart.dart';

import '../error/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}
