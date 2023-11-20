import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/use_cases/get_top_anime.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../core/values/anime_list.dart';
import 'get_anime_test.mocks.dart';

void main() {
  late GetTopAnime usecase;
  late MockAnimeRepository mockAnimeRepository;

  setUp(() {
    mockAnimeRepository = MockAnimeRepository();
    usecase = GetTopAnime(mockAnimeRepository);
  });

  test('should get top anime from repository', () async {
    // arrange
    when(mockAnimeRepository.getTopAnime())
        .thenAnswer((realInvocation) async => Right(tAnimeList));
    // act
    final result = await usecase();

    // assert
    expect(result, isA<Right<Failure, List<AnimeModel>>>());
    verify(mockAnimeRepository.getTopAnime());
    verifyNoMoreInteractions(mockAnimeRepository);
  });
}
