import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_kullanimi/second_bloc_project/maths_repository.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(1);

  var mathRepo = MathsRepository();

  void add(String val1, String val2) {
    emit(mathRepo.topla(val1, val2));
  }

  void multiple(String val1, String val2) {
    emit(mathRepo.carp(val1, val2));
  }
}
