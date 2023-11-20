import 'package:anime_cast/data/models/anime.dart';

abstract class AnimeRemoteDataSource {
  Future<List<AnimeModel>> getAnime();
  Future<List<AnimeModel>> getTopAnime();
  Future<List<AnimeModel>> getRecommendationAnime();
  Future<AnimeModel> getAnimeById(int id);
}
