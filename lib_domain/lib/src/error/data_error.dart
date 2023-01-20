import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_error.freezed.dart';

@freezed
class DataError with _$DataError {
  DataError._();

  factory DataError.unhandled({dynamic cause}) = _UnhandledDataError;

  factory DataError.remote() = _RemoteDataError;

  factory DataError.mapping() = _MappingDataError;
}
