import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetAnime {
  final AnimeRepository _repository;

  GetAnime(this._repository);

  Future<Either<Failure, List<AnimeModel>>> call() {
    return _repository.getAnime();
  }
}
