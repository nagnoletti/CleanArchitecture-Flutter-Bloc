
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_list_cubit_state.freezed.dart';

@freezed
abstract class AnimeListCubitState with _$AnimeListCubitState {
  AnimeListCubitState._();

  factory AnimeListCubitState.loading() = _LoadingAnimeListCubitState;

  factory AnimeListCubitState.idle() = _IdleAnimeListCubitState;

  factory AnimeListCubitState.error() = _ErrorAnimeListCubitState;

  factory AnimeListCubitState.success(List<Anime> animes) = _SuccessAnimeListCubitState;
}
