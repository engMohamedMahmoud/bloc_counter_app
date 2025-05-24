import '../business_layer/cubit/counter_cubit.dart';
import 'routes.dart';
import '../presentation_layer/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CounterCubit counterCubit;
  AppRouter() {
    counterCubit = CounterCubit();
  }

  Route? ongenerateRouter(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => counterCubit,
                child: HomeScreen(),
              ),
        );
    }
    return null;
  }
}
