/*
Author: Harun Demir
Create Date: 2.05.2025
Update Date: 2.05.2025
*/

import 'package:get_it/get_it.dart';

import 'features/home/data/datasources/home_local_data_source.dart';
import 'features/home/data/repositories/home_repository_impl.dart';
import 'features/home/domain/repositories/home_repository.dart';
import 'features/home/domain/usecases/decrement_counter.dart';
import 'features/home/domain/usecases/increment_counter.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initHome();
}

void _initHome() {
  serviceLocator
    ..registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl(),
    )
    ..registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(serviceLocator()),
    )
    ..registerFactory(() => IncrementCounter(serviceLocator()))
    ..registerFactory(() => DecrementCounter(serviceLocator()))
    ..registerFactory(
      () => HomeBloc(
        incrementCounter: serviceLocator(),
        decrementCounter: serviceLocator(),
      ),
    );
}
