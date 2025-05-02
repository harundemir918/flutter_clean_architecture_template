/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import '../models/counter_model.dart';

abstract interface class HomeLocalDataSource {
  Future<CounterModel> incrementCounter();
  Future<CounterModel> decrementCounter();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final CounterModel _counterModel = CounterModel(0);
  @override
  Future<CounterModel> incrementCounter() async {
    try {
      _counterModel.counter++;
      return _counterModel;
    } catch (e) {
      throw Exception("Counter could not be incremented.");
    }
  }

  @override
  Future<CounterModel> decrementCounter() async {
    try {
      _counterModel.counter--;
      return _counterModel;
    } catch (e) {
      throw Exception("Counter could not be decremented.");
    }
  }
}
