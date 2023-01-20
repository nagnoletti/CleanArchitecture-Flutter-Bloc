// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_list_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeListCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Anime> animes) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function()? error,
    TResult? Function(List<Anime> animes)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Anime> animes)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListCubitState value) loading,
    required TResult Function(_IdleAnimeListCubitState value) idle,
    required TResult Function(_ErrorAnimeListCubitState value) error,
    required TResult Function(_SuccessAnimeListCubitState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListCubitState value)? loading,
    TResult? Function(_IdleAnimeListCubitState value)? idle,
    TResult? Function(_ErrorAnimeListCubitState value)? error,
    TResult? Function(_SuccessAnimeListCubitState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListCubitState value)? loading,
    TResult Function(_IdleAnimeListCubitState value)? idle,
    TResult Function(_ErrorAnimeListCubitState value)? error,
    TResult Function(_SuccessAnimeListCubitState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListCubitStateCopyWith<$Res> {
  factory $AnimeListCubitStateCopyWith(
          AnimeListCubitState value, $Res Function(AnimeListCubitState) then) =
      _$AnimeListCubitStateCopyWithImpl<$Res, AnimeListCubitState>;
}

/// @nodoc
class _$AnimeListCubitStateCopyWithImpl<$Res, $Val extends AnimeListCubitState>
    implements $AnimeListCubitStateCopyWith<$Res> {
  _$AnimeListCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingAnimeListCubitStateCopyWith<$Res> {
  factory _$$_LoadingAnimeListCubitStateCopyWith(
          _$_LoadingAnimeListCubitState value,
          $Res Function(_$_LoadingAnimeListCubitState) then) =
      __$$_LoadingAnimeListCubitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingAnimeListCubitStateCopyWithImpl<$Res>
    extends _$AnimeListCubitStateCopyWithImpl<$Res,
        _$_LoadingAnimeListCubitState>
    implements _$$_LoadingAnimeListCubitStateCopyWith<$Res> {
  __$$_LoadingAnimeListCubitStateCopyWithImpl(
      _$_LoadingAnimeListCubitState _value,
      $Res Function(_$_LoadingAnimeListCubitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingAnimeListCubitState extends _LoadingAnimeListCubitState {
  _$_LoadingAnimeListCubitState() : super._();

  @override
  String toString() {
    return 'AnimeListCubitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingAnimeListCubitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Anime> animes) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function()? error,
    TResult? Function(List<Anime> animes)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Anime> animes)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListCubitState value) loading,
    required TResult Function(_IdleAnimeListCubitState value) idle,
    required TResult Function(_ErrorAnimeListCubitState value) error,
    required TResult Function(_SuccessAnimeListCubitState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListCubitState value)? loading,
    TResult? Function(_IdleAnimeListCubitState value)? idle,
    TResult? Function(_ErrorAnimeListCubitState value)? error,
    TResult? Function(_SuccessAnimeListCubitState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListCubitState value)? loading,
    TResult Function(_IdleAnimeListCubitState value)? idle,
    TResult Function(_ErrorAnimeListCubitState value)? error,
    TResult Function(_SuccessAnimeListCubitState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAnimeListCubitState extends AnimeListCubitState {
  factory _LoadingAnimeListCubitState() = _$_LoadingAnimeListCubitState;
  _LoadingAnimeListCubitState._() : super._();
}

/// @nodoc
abstract class _$$_IdleAnimeListCubitStateCopyWith<$Res> {
  factory _$$_IdleAnimeListCubitStateCopyWith(_$_IdleAnimeListCubitState value,
          $Res Function(_$_IdleAnimeListCubitState) then) =
      __$$_IdleAnimeListCubitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleAnimeListCubitStateCopyWithImpl<$Res>
    extends _$AnimeListCubitStateCopyWithImpl<$Res, _$_IdleAnimeListCubitState>
    implements _$$_IdleAnimeListCubitStateCopyWith<$Res> {
  __$$_IdleAnimeListCubitStateCopyWithImpl(_$_IdleAnimeListCubitState _value,
      $Res Function(_$_IdleAnimeListCubitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IdleAnimeListCubitState extends _IdleAnimeListCubitState {
  _$_IdleAnimeListCubitState() : super._();

  @override
  String toString() {
    return 'AnimeListCubitState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdleAnimeListCubitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Anime> animes) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function()? error,
    TResult? Function(List<Anime> animes)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Anime> animes)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListCubitState value) loading,
    required TResult Function(_IdleAnimeListCubitState value) idle,
    required TResult Function(_ErrorAnimeListCubitState value) error,
    required TResult Function(_SuccessAnimeListCubitState value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListCubitState value)? loading,
    TResult? Function(_IdleAnimeListCubitState value)? idle,
    TResult? Function(_ErrorAnimeListCubitState value)? error,
    TResult? Function(_SuccessAnimeListCubitState value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListCubitState value)? loading,
    TResult Function(_IdleAnimeListCubitState value)? idle,
    TResult Function(_ErrorAnimeListCubitState value)? error,
    TResult Function(_SuccessAnimeListCubitState value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleAnimeListCubitState extends AnimeListCubitState {
  factory _IdleAnimeListCubitState() = _$_IdleAnimeListCubitState;
  _IdleAnimeListCubitState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorAnimeListCubitStateCopyWith<$Res> {
  factory _$$_ErrorAnimeListCubitStateCopyWith(
          _$_ErrorAnimeListCubitState value,
          $Res Function(_$_ErrorAnimeListCubitState) then) =
      __$$_ErrorAnimeListCubitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorAnimeListCubitStateCopyWithImpl<$Res>
    extends _$AnimeListCubitStateCopyWithImpl<$Res, _$_ErrorAnimeListCubitState>
    implements _$$_ErrorAnimeListCubitStateCopyWith<$Res> {
  __$$_ErrorAnimeListCubitStateCopyWithImpl(_$_ErrorAnimeListCubitState _value,
      $Res Function(_$_ErrorAnimeListCubitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErrorAnimeListCubitState extends _ErrorAnimeListCubitState {
  _$_ErrorAnimeListCubitState() : super._();

  @override
  String toString() {
    return 'AnimeListCubitState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAnimeListCubitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Anime> animes) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function()? error,
    TResult? Function(List<Anime> animes)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Anime> animes)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListCubitState value) loading,
    required TResult Function(_IdleAnimeListCubitState value) idle,
    required TResult Function(_ErrorAnimeListCubitState value) error,
    required TResult Function(_SuccessAnimeListCubitState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListCubitState value)? loading,
    TResult? Function(_IdleAnimeListCubitState value)? idle,
    TResult? Function(_ErrorAnimeListCubitState value)? error,
    TResult? Function(_SuccessAnimeListCubitState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListCubitState value)? loading,
    TResult Function(_IdleAnimeListCubitState value)? idle,
    TResult Function(_ErrorAnimeListCubitState value)? error,
    TResult Function(_SuccessAnimeListCubitState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAnimeListCubitState extends AnimeListCubitState {
  factory _ErrorAnimeListCubitState() = _$_ErrorAnimeListCubitState;
  _ErrorAnimeListCubitState._() : super._();
}

/// @nodoc
abstract class _$$_SuccessAnimeListCubitStateCopyWith<$Res> {
  factory _$$_SuccessAnimeListCubitStateCopyWith(
          _$_SuccessAnimeListCubitState value,
          $Res Function(_$_SuccessAnimeListCubitState) then) =
      __$$_SuccessAnimeListCubitStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Anime> animes});
}

/// @nodoc
class __$$_SuccessAnimeListCubitStateCopyWithImpl<$Res>
    extends _$AnimeListCubitStateCopyWithImpl<$Res,
        _$_SuccessAnimeListCubitState>
    implements _$$_SuccessAnimeListCubitStateCopyWith<$Res> {
  __$$_SuccessAnimeListCubitStateCopyWithImpl(
      _$_SuccessAnimeListCubitState _value,
      $Res Function(_$_SuccessAnimeListCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animes = null,
  }) {
    return _then(_$_SuccessAnimeListCubitState(
      null == animes
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ));
  }
}

/// @nodoc

class _$_SuccessAnimeListCubitState extends _SuccessAnimeListCubitState {
  _$_SuccessAnimeListCubitState(final List<Anime> animes)
      : _animes = animes,
        super._();

  final List<Anime> _animes;
  @override
  List<Anime> get animes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animes);
  }

  @override
  String toString() {
    return 'AnimeListCubitState.success(animes: $animes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAnimeListCubitState &&
            const DeepCollectionEquality().equals(other._animes, _animes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_animes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessAnimeListCubitStateCopyWith<_$_SuccessAnimeListCubitState>
      get copyWith => __$$_SuccessAnimeListCubitStateCopyWithImpl<
          _$_SuccessAnimeListCubitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function() error,
    required TResult Function(List<Anime> animes) success,
  }) {
    return success(animes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function()? error,
    TResult? Function(List<Anime> animes)? success,
  }) {
    return success?.call(animes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function()? error,
    TResult Function(List<Anime> animes)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(animes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListCubitState value) loading,
    required TResult Function(_IdleAnimeListCubitState value) idle,
    required TResult Function(_ErrorAnimeListCubitState value) error,
    required TResult Function(_SuccessAnimeListCubitState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListCubitState value)? loading,
    TResult? Function(_IdleAnimeListCubitState value)? idle,
    TResult? Function(_ErrorAnimeListCubitState value)? error,
    TResult? Function(_SuccessAnimeListCubitState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListCubitState value)? loading,
    TResult Function(_IdleAnimeListCubitState value)? idle,
    TResult Function(_ErrorAnimeListCubitState value)? error,
    TResult Function(_SuccessAnimeListCubitState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessAnimeListCubitState extends AnimeListCubitState {
  factory _SuccessAnimeListCubitState(final List<Anime> animes) =
      _$_SuccessAnimeListCubitState;
  _SuccessAnimeListCubitState._() : super._();

  List<Anime> get animes;
  @JsonKey(ignore: true)
  _$$_SuccessAnimeListCubitStateCopyWith<_$_SuccessAnimeListCubitState>
      get copyWith => throw _privateConstructorUsedError;
}
