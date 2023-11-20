import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart';
import 'package:anime_cast/data/data_sources/remote/anime_remote_data_source_impl.dart';
import 'package:anime_cast/data/repositories/anime_repository_impl.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:anime_cast/domain/use_cases/get_anime.dart';
import 'package:anime_cast/domain/use_cases/get_anime_by_id.dart';
import 'package:anime_cast/domain/use_cases/get_anime_recommendation.dart';
import 'package:anime_cast/domain/use_cases/get_top_anime.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

void init() {
  // usecae
  sl.registerSingleton(() => GetAnime(sl()));
  sl.registerSingleton(() => GetTopAnime(sl()));
  sl.registerSingleton(() => GetAnimeRecomendation(sl()));
  sl.registerSingleton(() => GetAnimeById(sl()));

  // repository
  sl.registerLazySingleton<AnimeRepository>(() => AnimeRepositoryImpl(sl()));

  // data source
  sl.registerLazySingleton<AnimeRemoteDataSource>(
      () => AnimeRemoteDataSourceImpl(sl()));

  // http service
  sl.registerLazySingleton(() => http.Client());
}
