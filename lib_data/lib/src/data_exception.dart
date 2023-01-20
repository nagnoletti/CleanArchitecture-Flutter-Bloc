import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_exception.freezed.dart';

/// Exception representing common error that may occur into the data layer.
@freezed
class DataException with _$DataException implements Exception {
  DataException._();

  factory DataException.unhandled(dynamic cause) = _DataUnhandledException;

  factory DataException.mapping(String message) = _DataMappingException;

  factory DataException.remote(String message) = _DataRemoteException;
}