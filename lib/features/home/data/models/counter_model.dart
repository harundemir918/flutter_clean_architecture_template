/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import '../../domain/entities/counter_entity.dart';

class CounterModel extends CounterEntity {
  CounterModel(super.counter);

  CounterModel copyWith({int? counter}) =>
      CounterModel(counter ?? this.counter);
}
