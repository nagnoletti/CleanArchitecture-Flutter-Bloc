import 'package:data/data.dart';
import 'package:service/src/anime/anime_api.dart';
import 'package:service/src/util/datasource_exceptions.dart';

/// [AnimeDatasourceImpl] is a class with implements [AnimeDatasource] interface
/// This contain a logic to make in this case a call with an api
class AnimeDatasourceImpl implements AnimeDatasource {
  final AnimeAPI _api;

  AnimeDatasourceImpl(this._api);

  @override
  Future<List<AnimeSerializable>> getAnimes() => handleRemoteErrors(
        _api.getAnimeList().then((value) => value.data),
      );

  @override
  Future<AnimeSerializable> getAnimeById(String id) => handleRemoteErrors(
        _api.getAnimeById(id).then((value) => value.data),
      );

  @override
  Future<List<AnimeSerializable>> getAnimesWithError() => handleRemoteErrors(
        _api.getAnimeListError().then((value) => value.data),
      );
}
