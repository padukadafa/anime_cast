import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetTopAnime {
  final AnimeRepository _animeRepository;
  GetTopAnime(this._animeRepository);

  Future<Either<Failure, List<AnimeModel>>> call() {
    return _animeRepository.getTopAnime();
  }
}
