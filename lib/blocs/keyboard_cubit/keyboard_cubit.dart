import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'keyboard_state.dart';

class KeyboardCubit extends Cubit<KeyboardState> {
  KeyboardCubit() : super(const KeyboardState());

  void passNumber(int number) {
    String? newNumber = '${state.passedNumber ?? ''}' + '$number';
    emit(KeyboardState(passedNumber: int.parse(newNumber)));
  }

  void deleteCharacter() {
    String currentNumber = state.passedNumber.toString();
    String? actualNumber = currentNumber.substring(0, currentNumber.length - 1);
    emit(KeyboardState(passedNumber: int.tryParse(actualNumber)));
  }

}
