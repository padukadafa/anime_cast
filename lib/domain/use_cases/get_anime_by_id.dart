import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetAnimeById {
  final AnimeRepository _animeRepository;
  GetAnimeById(this._animeRepository);
  Future<Either<Failure, AnimeModel>> call(int id) {
    return _animeRepository.getAnimeById(id);
  }
}
