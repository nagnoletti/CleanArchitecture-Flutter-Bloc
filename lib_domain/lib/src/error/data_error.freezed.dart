// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function() remote,
    required TResult Function() mapping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function()? remote,
    TResult? Function()? mapping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function()? remote,
    TResult Function()? mapping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnhandledDataError value) unhandled,
    required TResult Function(_RemoteDataError value) remote,
    required TResult Function(_MappingDataError value) mapping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnhandledDataError value)? unhandled,
    TResult? Function(_RemoteDataError value)? remote,
    TResult? Function(_MappingDataError value)? mapping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnhandledDataError value)? unhandled,
    TResult Function(_RemoteDataError value)? remote,
    TResult Function(_MappingDataError value)? mapping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataErrorCopyWith<$Res> {
  factory $DataErrorCopyWith(DataError value, $Res Function(DataError) then) =
      _$DataErrorCopyWithImpl<$Res, DataError>;
}

/// @nodoc
class _$DataErrorCopyWithImpl<$Res, $Val extends DataError>
    implements $DataErrorCopyWith<$Res> {
  _$DataErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnhandledDataErrorCopyWith<$Res> {
  factory _$$_UnhandledDataErrorCopyWith(_$_UnhandledDataError value,
          $Res Function(_$_UnhandledDataError) then) =
      __$$_UnhandledDataErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic cause});
}

/// @nodoc
class __$$_UnhandledDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_UnhandledDataError>
    implements _$$_UnhandledDataErrorCopyWith<$Res> {
  __$$_UnhandledDataErrorCopyWithImpl(
      _$_UnhandledDataError _value, $Res Function(_$_UnhandledDataError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = null,
  }) {
    return _then(_$_UnhandledDataError(
      cause: null == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnhandledDataError extends _UnhandledDataError {
  _$_UnhandledDataError({this.cause}) : super._();

  @override
  final dynamic cause;

  @override
  String toString() {
    return 'DataError.unhandled(cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnhandledDataError &&
            const DeepCollectionEquality().equals(other.cause, cause));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cause));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnhandledDataErrorCopyWith<_$_UnhandledDataError> get copyWith =>
      __$$_UnhandledDataErrorCopyWithImpl<_$_UnhandledDataError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function() remote,
    required TResult Function() mapping,
  }) {
    return unhandled(cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function()? remote,
    TResult? Function()? mapping,
  }) {
    return unhandled?.call(cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function()? remote,
    TResult Function()? mapping,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnhandledDataError value) unhandled,
    required TResult Function(_RemoteDataError value) remote,
    required TResult Function(_MappingDataError value) mapping,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnhandledDataError value)? unhandled,
    TResult? Function(_RemoteDataError value)? remote,
    TResult? Function(_MappingDataError value)? mapping,
  }) {
    return unhandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnhandledDataError value)? unhandled,
    TResult Function(_RemoteDataError value)? remote,
    TResult Function(_MappingDataError value)? mapping,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _UnhandledDataError extends DataError {
  factory _UnhandledDataError({final dynamic cause}) = _$_UnhandledDataError;
  _UnhandledDataError._() : super._();

  dynamic get cause;
  @JsonKey(ignore: true)
  _$$_UnhandledDataErrorCopyWith<_$_UnhandledDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteDataErrorCopyWith<$Res> {
  factory _$$_RemoteDataErrorCopyWith(
          _$_RemoteDataError value, $Res Function(_$_RemoteDataError) then) =
      __$$_RemoteDataErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoteDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_RemoteDataError>
    implements _$$_RemoteDataErrorCopyWith<$Res> {
  __$$_RemoteDataErrorCopyWithImpl(
      _$_RemoteDataError _value, $Res Function(_$_RemoteDataError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoteDataError extends _RemoteDataError {
  _$_RemoteDataError() : super._();

  @override
  String toString() {
    return 'DataError.remote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoteDataError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function() remote,
    required TResult Function() mapping,
  }) {
    return remote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function()? remote,
    TResult? Function()? mapping,
  }) {
    return remote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function()? remote,
    TResult Function()? mapping,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnhandledDataError value) unhandled,
    required TResult Function(_RemoteDataError value) remote,
    required TResult Function(_MappingDataError value) mapping,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnhandledDataError value)? unhandled,
    TResult? Function(_RemoteDataError value)? remote,
    TResult? Function(_MappingDataError value)? mapping,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnhandledDataError value)? unhandled,
    TResult Function(_RemoteDataError value)? remote,
    TResult Function(_MappingDataError value)? mapping,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataError extends DataError {
  factory _RemoteDataError() = _$_RemoteDataError;
  _RemoteDataError._() : super._();
}

/// @nodoc
abstract class _$$_MappingDataErrorCopyWith<$Res> {
  factory _$$_MappingDataErrorCopyWith(
          _$_MappingDataError value, $Res Function(_$_MappingDataError) then) =
      __$$_MappingDataErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MappingDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_MappingDataError>
    implements _$$_MappingDataErrorCopyWith<$Res> {
  __$$_MappingDataErrorCopyWithImpl(
      _$_MappingDataError _value, $Res Function(_$_MappingDataError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MappingDataError extends _MappingDataError {
  _$_MappingDataError() : super._();

  @override
  String toString() {
    return 'DataError.mapping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MappingDataError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function() remote,
    required TResult Function() mapping,
  }) {
    return mapping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function()? remote,
    TResult? Function()? mapping,
  }) {
    return mapping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function()? remote,
    TResult Function()? mapping,
    required TResult orElse(),
  }) {
    if (mapping != null) {
      return mapping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnhandledDataError value) unhandled,
    required TResult Function(_RemoteDataError value) remote,
    required TResult Function(_MappingDataError value) mapping,
  }) {
    return mapping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnhandledDataError value)? unhandled,
    TResult? Function(_RemoteDataError value)? remote,
    TResult? Function(_MappingDataError value)? mapping,
  }) {
    return mapping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnhandledDataError value)? unhandled,
    TResult Function(_RemoteDataError value)? remote,
    TResult Function(_MappingDataError value)? mapping,
    required TResult orElse(),
  }) {
    if (mapping != null) {
      return mapping(this);
    }
    return orElse();
  }
}

abstract class _MappingDataError extends DataError {
  factory _MappingDataError() = _$_MappingDataError;
  _MappingDataError._() : super._();
}
