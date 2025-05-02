import '../../domain/entities/counter_entity.dart';

class CounterModel extends CounterEntity {
  CounterModel(super.counter);

  CounterModel copyWith({int? counter}) =>
      CounterModel(counter ?? this.counter);
}
