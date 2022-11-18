import 'package:flutter_bloc/flutter_bloc.dart';

class SayacCubit extends Cubit<int> {
  SayacCubit() : super(0);

  void sayaciArttir() {
    int count = state + 1;
    emit(count);
  }

  void sayaciAzalt(int num) {
    int count = state - num;
    emit(count);
  }
}
