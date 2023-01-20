import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:service/src/anime/anime_serializable_wrappers.dart';


part 'anime_api.g.dart';

@RestApi()
abstract class AnimeAPI {
  factory AnimeAPI(Dio dio, {required String baseUrl}) = _AnimeAPI;

  @GET('/api/edge/anime')
  Future<AnimeSerializableListWrapper> getAnimeList();

  @GET('/api/edge/anime?filter[id]={id}')
  Future<AnimeSerializableWrapper> getAnimeById(String id);

  @GET('/api/edge/animes')
  Future<AnimeSerializableListWrapper> getAnimeListError();
}
