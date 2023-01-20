import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class SafeCubit<S> extends Cubit<S> {
  SafeCubit(super.initialState);

  @override
  @protected
  void emit(S state) => isClosed ? null : super.emit(state);
}
