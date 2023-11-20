import 'package:anime_cast/core/error/server_error.dart';
import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart';
import 'package:anime_cast/data/data_sources/remote/anime_remote_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import 'anime_remote_respository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
void main() {
  late MockClient mockClient;
  late AnimeRemoteDataSource dataSource;

  const tAnimeListBody = '''
  {"data" : [
    {
    "mal_id": 0,
    "url": "string",
    "images": {
        "jpg": {
            "image_url": "string",
            "small_image_url": "string",
            "large_image_url": "string"
        },
        "webp": {
            "image_url": "string",
            "small_image_url": "string",
            "large_image_url": "string"
        }
    },
    "trailer": {
        "youtube_id": "string",
        "url": "string",
        "embed_url": "string"
    },
    "approved": true,
    "titles": [
        {
            "type": "string",
            "title": "string"
        }
    ],
    "title": "string",
    "title_english": "string",
    "title_japanese": "string",
    "title_synonyms": [
        "string"
    ],
    "type": "TV",
    "source": "string",
    "episodes": 0,
    "status": "Finished Airing",
    "airing": true,
    "aired": {
        "from": "string",
        "to": "string",
        "prop": {
            "from": {
                "day": 0,
                "month": 0,
                "year": 0
            },
            "to": {
                "day": 0,
                "month": 0,
                "year": 0
            },
            "string": "string"
        }
    },
    "duration": "string",
    "rating": "G - All Ages",
    "score": 0,
    "scored_by": 0,
    "rank": 0,
    "popularity": 0,
    "members": 0,
    "favorites": 0,
    "synopsis": "string",
    "background": "string",
    "season": "summer",
    "year": 0,
    "broadcast": {
        "day": "string",
        "time": "string",
        "timezone": "string",
        "string": "string"
    },
    "producers": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "licensors": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "studios": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "genres": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "explicit_genres": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "themes": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "demographics": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ]
}
  ]}
''';
  const String tAnimeBody = '''
  {"data" : 
    {
    "mal_id": 0,
    "url": "string",
    "images": {
        "jpg": {
            "image_url": "string",
            "small_image_url": "string",
            "large_image_url": "string"
        },
        "webp": {
            "image_url": "string",
            "small_image_url": "string",
            "large_image_url": "string"
        }
    },
    "trailer": {
        "youtube_id": "string",
        "url": "string",
        "embed_url": "string"
    },
    "approved": true,
    "titles": [
        {
            "type": "string",
            "title": "string"
        }
    ],
    "title": "string",
    "title_english": "string",
    "title_japanese": "string",
    "title_synonyms": [
        "string"
    ],
    "type": "TV",
    "source": "string",
    "episodes": 0,
    "status": "Finished Airing",
    "airing": true,
    "aired": {
        "from": "string",
        "to": "string",
        "prop": {
            "from": {
                "day": 0,
                "month": 0,
                "year": 0
            },
            "to": {
                "day": 0,
                "month": 0,
                "year": 0
            },
            "string": "string"
        }
    },
    "duration": "string",
    "rating": "G - All Ages",
    "score": 0,
    "scored_by": 0,
    "rank": 0,
    "popularity": 0,
    "members": 0,
    "favorites": 0,
    "synopsis": "string",
    "background": "string",
    "season": "summer",
    "year": 0,
    "broadcast": {
        "day": "string",
        "time": "string",
        "timezone": "string",
        "string": "string"
    },
    "producers": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "licensors": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "studios": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "genres": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "explicit_genres": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "themes": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ],
    "demographics": [
        {
            "mal_id": 0,
            "type": "string",
            "name": "string",
            "url": "string"
        }
    ]
}
  }
''';
  const String tUrl = "https://api.jikan.moe/v4/anime";
  const int tId = 0;
  const String iUrl = "https://api.jikan.moe/v4/anime/$tId";
  const String pUrl = "https://api.jikan.moe/v4/top/anime";
  const String rUrl = "https://api.jikan.moe/v4/recommendations/anime";
  setUp(() {
    mockClient = MockClient();
    dataSource = AnimeRemoteDataSourceImpl(mockClient);
  });
  group('test getAnime', () {
    test('should perform GET request on a url to get anime list', () async {
      // arrange
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response(tAnimeListBody, 200));
      await dataSource.getAnime();
      verify(mockClient.get(Uri.parse(tUrl)));
    });
    test('should throw ServerException when the response code 404 ', () async {
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response('any response', 404));

      final call = dataSource.getAnime;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });
  group('test getAnimeById', () {
    test('should perform GET request with id query on a url to get anime',
        () async {
      // arrange
      when(mockClient.get(any))
          .thenAnswer((realInvocation) async => http.Response(tAnimeBody, 200));
      await dataSource.getAnimeById(tId);
      verify(mockClient.get(Uri.parse(iUrl)));
    });
    test('should throw ServerException when the response code 404 ', () async {
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response('any response', 404));

      final call = dataSource.getAnimeById;
      expect(() => call(tId), throwsA(isA<ServerException>()));
    });
  });
  group('test getTopAnime', () {
    test('should perform GET request  on a url to get top anime', () async {
      // arrange
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response(tAnimeListBody, 200));
      await dataSource.getTopAnime();
      verify(mockClient.get(Uri.parse(pUrl)));
    });
    test('should throw ServerException when the response code 404 ', () async {
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response('any response', 404));

      final call = dataSource.getTopAnime;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });
  group('test getRecommendationsAnime', () {
    test('should perform GET request  on a url to get recommendation anime',
        () async {
      // arrange
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response(tAnimeListBody, 200));
      await dataSource.getRecommendationAnime();
      verify(mockClient.get(Uri.parse(rUrl)));
    });
    test('should throw ServerException when the response code 404 ', () async {
      when(mockClient.get(any)).thenAnswer(
          (realInvocation) async => http.Response('any response', 404));

      final call = dataSource.getRecommendationAnime;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });
}
