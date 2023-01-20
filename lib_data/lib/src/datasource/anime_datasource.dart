import 'package:data/data.dart';

/// [AnimeDatasource] is a interface of [AnimeDatasourceImpl]
abstract class AnimeDatasource {
  Future<List<AnimeSerializable>> getAnimes();

  Future<AnimeSerializable> getAnimeById(String id);

  Future<List<AnimeSerializable>> getAnimesWithError();
}
