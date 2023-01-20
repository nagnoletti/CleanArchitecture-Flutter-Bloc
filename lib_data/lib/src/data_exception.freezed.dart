// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function(String message) mapping,
    required TResult Function(String message) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function(String message)? mapping,
    TResult? Function(String message)? remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function(String message)? mapping,
    TResult Function(String message)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataUnhandledException value) unhandled,
    required TResult Function(_DataMappingException value) mapping,
    required TResult Function(_DataRemoteException value) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataUnhandledException value)? unhandled,
    TResult? Function(_DataMappingException value)? mapping,
    TResult? Function(_DataRemoteException value)? remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataUnhandledException value)? unhandled,
    TResult Function(_DataMappingException value)? mapping,
    TResult Function(_DataRemoteException value)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataExceptionCopyWith<$Res> {
  factory $DataExceptionCopyWith(
          DataException value, $Res Function(DataException) then) =
      _$DataExceptionCopyWithImpl<$Res, DataException>;
}

/// @nodoc
class _$DataExceptionCopyWithImpl<$Res, $Val extends DataException>
    implements $DataExceptionCopyWith<$Res> {
  _$DataExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataUnhandledExceptionCopyWith<$Res> {
  factory _$$_DataUnhandledExceptionCopyWith(_$_DataUnhandledException value,
          $Res Function(_$_DataUnhandledException) then) =
      __$$_DataUnhandledExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic cause});
}

/// @nodoc
class __$$_DataUnhandledExceptionCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$_DataUnhandledException>
    implements _$$_DataUnhandledExceptionCopyWith<$Res> {
  __$$_DataUnhandledExceptionCopyWithImpl(_$_DataUnhandledException _value,
      $Res Function(_$_DataUnhandledException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cause = null,
  }) {
    return _then(_$_DataUnhandledException(
      null == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_DataUnhandledException extends _DataUnhandledException {
  _$_DataUnhandledException(this.cause) : super._();

  @override
  final dynamic cause;

  @override
  String toString() {
    return 'DataException.unhandled(cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataUnhandledException &&
            const DeepCollectionEquality().equals(other.cause, cause));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cause));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataUnhandledExceptionCopyWith<_$_DataUnhandledException> get copyWith =>
      __$$_DataUnhandledExceptionCopyWithImpl<_$_DataUnhandledException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function(String message) mapping,
    required TResult Function(String message) remote,
  }) {
    return unhandled(cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function(String message)? mapping,
    TResult? Function(String message)? remote,
  }) {
    return unhandled?.call(cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function(String message)? mapping,
    TResult Function(String message)? remote,
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
    required TResult Function(_DataUnhandledException value) unhandled,
    required TResult Function(_DataMappingException value) mapping,
    required TResult Function(_DataRemoteException value) remote,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataUnhandledException value)? unhandled,
    TResult? Function(_DataMappingException value)? mapping,
    TResult? Function(_DataRemoteException value)? remote,
  }) {
    return unhandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataUnhandledException value)? unhandled,
    TResult Function(_DataMappingException value)? mapping,
    TResult Function(_DataRemoteException value)? remote,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _DataUnhandledException extends DataException {
  factory _DataUnhandledException(final dynamic cause) =
      _$_DataUnhandledException;
  _DataUnhandledException._() : super._();

  dynamic get cause;
  @JsonKey(ignore: true)
  _$$_DataUnhandledExceptionCopyWith<_$_DataUnhandledException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataMappingExceptionCopyWith<$Res> {
  factory _$$_DataMappingExceptionCopyWith(_$_DataMappingException value,
          $Res Function(_$_DataMappingException) then) =
      __$$_DataMappingExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_DataMappingExceptionCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$_DataMappingException>
    implements _$$_DataMappingExceptionCopyWith<$Res> {
  __$$_DataMappingExceptionCopyWithImpl(_$_DataMappingException _value,
      $Res Function(_$_DataMappingException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_DataMappingException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataMappingException extends _DataMappingException {
  _$_DataMappingException(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'DataException.mapping(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataMappingException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataMappingExceptionCopyWith<_$_DataMappingException> get copyWith =>
      __$$_DataMappingExceptionCopyWithImpl<_$_DataMappingException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function(String message) mapping,
    required TResult Function(String message) remote,
  }) {
    return mapping(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function(String message)? mapping,
    TResult? Function(String message)? remote,
  }) {
    return mapping?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function(String message)? mapping,
    TResult Function(String message)? remote,
    required TResult orElse(),
  }) {
    if (mapping != null) {
      return mapping(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataUnhandledException value) unhandled,
    required TResult Function(_DataMappingException value) mapping,
    required TResult Function(_DataRemoteException value) remote,
  }) {
    return mapping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataUnhandledException value)? unhandled,
    TResult? Function(_DataMappingException value)? mapping,
    TResult? Function(_DataRemoteException value)? remote,
  }) {
    return mapping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataUnhandledException value)? unhandled,
    TResult Function(_DataMappingException value)? mapping,
    TResult Function(_DataRemoteException value)? remote,
    required TResult orElse(),
  }) {
    if (mapping != null) {
      return mapping(this);
    }
    return orElse();
  }
}

abstract class _DataMappingException extends DataException {
  factory _DataMappingException(final String message) = _$_DataMappingException;
  _DataMappingException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_DataMappingExceptionCopyWith<_$_DataMappingException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataRemoteExceptionCopyWith<$Res> {
  factory _$$_DataRemoteExceptionCopyWith(_$_DataRemoteException value,
          $Res Function(_$_DataRemoteException) then) =
      __$$_DataRemoteExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_DataRemoteExceptionCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$_DataRemoteException>
    implements _$$_DataRemoteExceptionCopyWith<$Res> {
  __$$_DataRemoteExceptionCopyWithImpl(_$_DataRemoteException _value,
      $Res Function(_$_DataRemoteException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_DataRemoteException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataRemoteException extends _DataRemoteException {
  _$_DataRemoteException(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'DataException.remote(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRemoteException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataRemoteExceptionCopyWith<_$_DataRemoteException> get copyWith =>
      __$$_DataRemoteExceptionCopyWithImpl<_$_DataRemoteException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic cause) unhandled,
    required TResult Function(String message) mapping,
    required TResult Function(String message) remote,
  }) {
    return remote(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic cause)? unhandled,
    TResult? Function(String message)? mapping,
    TResult? Function(String message)? remote,
  }) {
    return remote?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic cause)? unhandled,
    TResult Function(String message)? mapping,
    TResult Function(String message)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataUnhandledException value) unhandled,
    required TResult Function(_DataMappingException value) mapping,
    required TResult Function(_DataRemoteException value) remote,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataUnhandledException value)? unhandled,
    TResult? Function(_DataMappingException value)? mapping,
    TResult? Function(_DataRemoteException value)? remote,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataUnhandledException value)? unhandled,
    TResult Function(_DataMappingException value)? mapping,
    TResult Function(_DataRemoteException value)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class _DataRemoteException extends DataException {
  factory _DataRemoteException(final String message) = _$_DataRemoteException;
  _DataRemoteException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_DataRemoteExceptionCopyWith<_$_DataRemoteException> get copyWith =>
      throw _privateConstructorUsedError;
}
