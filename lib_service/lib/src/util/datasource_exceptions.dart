import 'package:data/data.dart';
import 'package:dio/dio.dart';

class DatasourceExceptions {
  DatasourceExceptions._();

  static DataException remote(String status, String path, Map<String, dynamic> params, Map<String, dynamic> headers) =>
      DataException.remote('Request to $path failed with status $status\nparams: $params\nheaders: $headers');
}

Future<T> handleRemoteErrors<T>(Future<T> f) => f.catchError(
      (err) {
    final e = err as DioError;
    throw DatasourceExceptions.remote(
      '${e.response?.statusCode}',
      e.requestOptions.path,
      e.requestOptions.queryParameters,
      e.requestOptions.headers,
    );
  },
  test: (err) => err is DioError,
);
