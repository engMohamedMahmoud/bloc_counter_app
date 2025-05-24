import 'package:hydrated_bloc/hydrated_bloc.dart';

class CounterCubit extends HydratedCubit<int> {
  CounterCubit() : super(0);

  void increaseCounter() => emit(state + 1);
  void decreaseCounter() => emit(state - 1);

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json["count"];
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return {"count": state};
  }
}
