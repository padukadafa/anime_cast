import 'package:anime_cast/core/error/failure.dart';
import 'package:anime_cast/core/error/server_error.dart';
import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:anime_cast/data/repositories/anime_repository_impl.dart';
import 'package:anime_cast/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../core/values/anime_list.dart';
import 'anime_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AnimeRemoteDataSource>()])
void main() {
  late AnimeRepository repository;
  late MockAnimeRemoteDataSource mockAnimeRemoteDataSource;

  setUp(() {
    mockAnimeRemoteDataSource = MockAnimeRemoteDataSource();
    repository = AnimeRepositoryImpl(mockAnimeRemoteDataSource);
  });
  const int tId = 0;
  group('test getAnime', () {
    test('should get anime from the the remote data source', () async {
      when(mockAnimeRemoteDataSource.getAnime())
          .thenAnswer((realInvocation) async => tAnimeList);
      final result = await repository.getAnime();

      expect(result, isA<Right<Failure, List<AnimeModel>>>());
      verify(mockAnimeRemoteDataSource.getAnime());
    });
    test(
        'should throw server failure when the call to remote data is unsuccessfully',
        () async {
      when(mockAnimeRemoteDataSource.getAnime()).thenThrow(ServerException());
      final result = await repository.getAnime();

      expect(result, isA<Left<Failure, List<AnimeModel>>>());
    });
  });
  group('test getAnimeById', () {
    test('should get anime by id from the the remote data source', () async {
      when(mockAnimeRemoteDataSource.getAnimeById(any))
          .thenAnswer((realInvocation) async => tAnimeList[0]);
      final result = await repository.getAnimeById(tId);

      expect(result, isA<Right<Failure, AnimeModel>>());
      verify(mockAnimeRemoteDataSource.getAnimeById(tId));
    });
    test(
        'should throw server failure when the call to remote data is unsuccessfully',
        () async {
      when(mockAnimeRemoteDataSource.getAnimeById(any))
          .thenThrow(ServerException());
      final result = await repository.getAnimeById(tId);

      expect(result, isA<Left<Failure, AnimeModel>>());
    });
  });
  group('test getTopAnime', () {
    test('should get top anime from the the remote data source', () async {
      when(mockAnimeRemoteDataSource.getTopAnime())
          .thenAnswer((realInvocation) async => tAnimeList);
      final result = await repository.getTopAnime();

      expect(result, isA<Right<Failure, List<AnimeModel>>>());
      verify(mockAnimeRemoteDataSource.getTopAnime());
    });
    test(
        'should throw server failure when the call to remote data is unsuccessfully',
        () async {
      when(mockAnimeRemoteDataSource.getTopAnime())
          .thenThrow(ServerException());
      final result = await repository.getTopAnime();

      expect(result, isA<Left<Failure, List<AnimeModel>>>());
    });
  });
  group('test getRecommendationAnime', () {
    test('should get recommendations anime from the the remote data source',
        () async {
      when(mockAnimeRemoteDataSource.getRecommendationAnime())
          .thenAnswer((realInvocation) async => tAnimeList);
      final result = await repository.getAnimeRecomendations();

      expect(result, isA<Right<Failure, List<AnimeModel>>>());
      verify(mockAnimeRemoteDataSource.getRecommendationAnime());
    });
    test(
        'should throw server failure when the call to remote data is unsuccessfully',
        () async {
      when(mockAnimeRemoteDataSource.getRecommendationAnime())
          .thenThrow(ServerException());
      final result = await repository.getAnimeRecomendations();

      expect(result, isA<Left<Failure, List<AnimeModel>>>());
    });
  });
}
