import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increaseCounter() => emit(state + 1);
  void decreaseCounter() => emit(state - 1);
}
