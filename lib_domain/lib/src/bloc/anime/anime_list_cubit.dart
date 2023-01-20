import 'package:domain/domain.dart';
import 'package:domain/src/bloc/anime/anime_list_cubit_state.dart';
import 'package:domain/src/bloc/safe_cubit.dart';

class AnimeListCubit extends SafeCubit<AnimeListCubitState> {
  final AnimeRepository _repository;

  AnimeListCubit(this._repository) : super(AnimeListCubitState.idle());

  Future<void> getAnimes() {
    emit(AnimeListCubitState.loading());
    return _repository.getAnimes().then((value) {
      final state = value.fold((left) => AnimeListCubitState.error(), (right) => AnimeListCubitState.success(right));
      emit(state);
    });
  }

  Future<void> getAnimesWithErrors() {
    emit(AnimeListCubitState.loading());
    return _repository.getAnimesWithError().then((value) {
      final state = value.fold((left) => AnimeListCubitState.error(), (right) => AnimeListCubitState.success(right));
      emit(state);
    });
  }
}
