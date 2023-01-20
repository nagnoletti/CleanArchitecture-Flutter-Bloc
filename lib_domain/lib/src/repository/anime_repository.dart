import 'package:domain/domain.dart';

/// [AnimeRepository] is a interface of [AnimeRepositoryImpl]
abstract class AnimeRepository {
  /// Fetches an Anime list
  Future<Either<DataError, List<Anime>>> getAnimes();

  /// Fetches an Anime by ID
  Future<Either<DataError, Anime>> getAnimeById(String id);

  /// Forces an error trying to fetch an Anime list.
  Future<Either<DataError, List<Anime>>> getAnimesWithError();
}
