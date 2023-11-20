import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/domain/use_cases/get_anime_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../core/values/anime_list.dart';
import 'get_anime_test.mocks.dart';

void main() {
  late GetAnimeById usecase;
  late MockAnimeRepository mockAnimeRepository;

  setUp(() {
    mockAnimeRepository = MockAnimeRepository();
    usecase = GetAnimeById(mockAnimeRepository);
  });
  const int tId = 0;
  test('should get anime by id from repository', () async {
    // arrange
    when(mockAnimeRepository.getAnimeById(any))
        .thenAnswer((realInvocation) async => Right(tAnimeList[0]));
    // act
    final result = await usecase(tId);

    // assert
    expect(result, isA<Right<Failure, AnimeModel>>());
    verify(mockAnimeRepository.getAnimeById(tId));
    verifyNoMoreInteractions(mockAnimeRepository);
  });
}
