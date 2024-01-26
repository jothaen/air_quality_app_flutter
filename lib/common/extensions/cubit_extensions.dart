import 'package:flutter_bloc/flutter_bloc.dart';

extension CubitExtensions<State> on Cubit<State> {
  void safeEmit(State state) {
    if (!isClosed) {
      // Did it on purpose
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      emit(state);
    }
  }
}
