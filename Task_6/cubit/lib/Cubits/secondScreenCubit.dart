// show_hide_text_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ShowHideTextState {
  final bool isObscure;
  final Icon suffixIcon;

  ShowHideTextState({required this.isObscure, required this.suffixIcon});
}

class ShowHideTextCubit extends Cubit<ShowHideTextState> {
  ShowHideTextCubit()
      : super(ShowHideTextState(
    isObscure: true,
    suffixIcon: Icon(Icons.visibility_off),
  ));

  void showHideText() {
    final isObscure = !state.isObscure;
    emit(ShowHideTextState(
      isObscure: isObscure,
      suffixIcon: isObscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
    ));
  }
}
