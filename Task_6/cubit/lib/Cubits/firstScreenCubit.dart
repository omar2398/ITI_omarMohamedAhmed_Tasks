// filter_bar_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterBarState {
  final List<String> filterNames;
  final int selectedIndex;

  FilterBarState({required this.filterNames, required this.selectedIndex});
}

class FilterBarCubit extends Cubit<FilterBarState> {
  FilterBarCubit()
      : super(FilterBarState(
    filterNames: ['عمر', 'محمد', 'احمد', 'عبدالحميد'],
    selectedIndex: 0,
  ));

  void selectButton(int index) {
    emit(FilterBarState(filterNames: state.filterNames, selectedIndex: index));
  }
}
