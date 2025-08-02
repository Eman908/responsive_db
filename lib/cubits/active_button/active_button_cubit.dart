import 'package:admin_db/cubits/active_button/active_button_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveButtonCubit extends Cubit<ActiveButtonState> {
  ActiveButtonCubit() : super(ActiveButtonInitial());
  int currentIndex = 0;
  int currentIndex2 = 0;

  void activeButton({required int index}) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ActiveButtonSelected());
    }
  }

  void activeButton2({required int index}) {
    if (index != currentIndex2) {
      currentIndex2 = index;
      emit(ActiveButtonSelected());
    }
  }
}
