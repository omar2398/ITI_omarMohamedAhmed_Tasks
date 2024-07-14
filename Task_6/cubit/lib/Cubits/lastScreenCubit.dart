// radio_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioState {
  final int radioIndex;

  RadioState({required this.radioIndex});
}

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioState(radioIndex: 0));

  void selectRadio(int index) {
    emit(RadioState(radioIndex: index));
  }
}
