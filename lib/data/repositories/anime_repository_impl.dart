import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl extends AnimeRepository {
  final AnimeRemoteDataSource animeRemoteDataSource;
  AnimeRepositoryImpl(this.animeRemoteDataSource);
  @override
  Future<Either<Failure, List<AnimeModel>>> getAnime() async {
    try {
      final result = await animeRemoteDataSource.getAnime();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AnimeModel>> getAnimeById(int id) async {
    try {
      final result = await animeRemoteDataSource.getAnimeById(id);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<AnimeModel>>> getAnimeRecomendations() async {
    try {
      final result = await animeRemoteDataSource.getRecommendationAnime();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<AnimeModel>>> getTopAnime() async {
    try {
      final result = await animeRemoteDataSource.getTopAnime();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
