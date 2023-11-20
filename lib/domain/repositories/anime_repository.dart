import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository {
  Future<Either<Failure, AnimeModel>> getAnimeById(int id);
  Future<Either<Failure, List<AnimeModel>>> getTopAnime();
  Future<Either<Failure, List<AnimeModel>>> getAnimeRecomendations();
  Future<Either<Failure, List<AnimeModel>>> getAnime();
}
