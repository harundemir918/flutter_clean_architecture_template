/*
Author: Harun Demir
Create Date: 1.05.2025
Update Date: 1.05.2025
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('You have pushed the button this many times:'),
        BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is HomeFailure) {
              debugPrint(state.error);
            }
          },
          builder: (context, state) {
            if (state is HomeInitial) {
              return Text(
                '${state.counter.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }
            if (state is HomeCounterUpdated) {
              return Text(
                '${state.counter.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }
            return const SizedBox();
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed:
                  () => context.read<HomeBloc>().add(HomeIncrementCounter()),
              icon: const Icon(Icons.add),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              tooltip: 'Increment',
            ),
            IconButton(
              onPressed:
                  () => context.read<HomeBloc>().add(HomeDecrementCounter()),
              icon: const Icon(Icons.remove),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              tooltip: 'Decrement',
            ),
          ],
        ),
      ],
    ),
  );
}
