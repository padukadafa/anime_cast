import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:anime_cast/domain/use_cases/get_anime.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../core/values/anime_list.dart';
import 'get_anime_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AnimeRepository>()])
void main() {
  late GetAnime usecase;
  late MockAnimeRepository mockAnimeRepository;

  setUp(() {
    mockAnimeRepository = MockAnimeRepository();
    usecase = GetAnime(mockAnimeRepository);
  });

  test('should get anime from repository', () async {
    // arrange
    when(mockAnimeRepository.getAnime())
        .thenAnswer((realInvocation) async => Right(tAnimeList));
    // act
    final result = await usecase();

    // assert
    expect(result, isA<Right<Failure, List<AnimeModel>>>());
    verify(mockAnimeRepository.getAnime());
    verifyNoMoreInteractions(mockAnimeRepository);
  });
}
