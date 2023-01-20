import 'package:data/src/data_exception.dart';

typedef DataMapperMethod<S, E> = E Function(S start, DataMapperHelper<S, E> helper);

class DataMapper<S, E> {
  final DataMapperMethod<S, E> _map;

  DataMapper({required DataMapperMethod<S, E> map}) : _map = map;

  E mapEntity(S s) {
    try {
      return _map(s, DataMapperHelper<S, E>._());
    } on DataException {
      rethrow;
    } catch (err) {
      throw DataException.unhandled(err);
    }
  }
}

class DualDataMapper<S, E> extends DataMapper<S, E> {
  final DataMapper<E, S> _invertedMapper;

  DualDataMapper({required DataMapperMethod<S, E> mapEntity, required DataMapperMethod<E, S> mapSerializable})
      : _invertedMapper = DataMapper<E, S>(map: mapSerializable),
        super(map: mapEntity);

  S mapSerializable(E e) => _invertedMapper.mapEntity(e);
}

class DataMapperHelper<S, E> {
  DataMapperHelper._();

  T require<T>(dynamic arg, {required String name}) {
    if (T.runtimeType == dynamic) {
      throw _mapping(S, E, message: "The 'dynamic' type is not allowed as an ending mapping result of the field named '$name'.");
    } else if (arg == null) {
      throw _mapping(S, E, message: '$S.$name value = $arg');
    } else if (arg.runtimeType != T) {
      throw _mapping(S, E, message: 'argument type is ${arg.runtimeType} instead of $T');
    } else {
      return arg as T;
    }
  }

  static DataException _mapping(Type startingType, Type endingType, {String? message}) => DataException.mapping(
        'An error occurred while mapping $startingType to type $endingType${message == null ? ': $message' : ''}',
      );
}
