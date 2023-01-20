import 'package:data/data.dart';
import 'package:data/src/mapping/anime_mapper.dart';
import 'package:data/src/util/repository_utils_mixin.dart';
import 'package:domain/domain.dart';

class AnimeRepositoryImpl with RepositoryUtilsMixin implements AnimeRepository {
  final AnimeDatasource _animeDatasource;

  AnimeRepositoryImpl(this._animeDatasource);

  @override
  Future<Either<DataError, List<Anime>>> getAnimes() => eitherDataErrorOr(
        () => _animeDatasource.getAnimes().then(
              (value) => value.map((e) => animeMapper.mapEntity(e)).toList(),
            ),
      );

  @override
  Future<Either<DataError, Anime>> getAnimeById(String id) => eitherDataErrorOr(
        () => _animeDatasource.getAnimeById(id).then((value) => animeMapper.mapEntity(value)),
      );

  @override
  Future<Either<DataError, List<Anime>>> getAnimesWithError() => eitherDataErrorOr(
        () => _animeDatasource.getAnimesWithError().then(
              (value) => value.map((e) => animeMapper.mapEntity(e)).whereType<Anime>().toList(),
            ),
      );
}
