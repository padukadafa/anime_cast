// Mocks generated by Mockito 5.4.3 from annotations
// in anime_cast/test/data/repositories/anime_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart'
    as _i3;
import 'package:anime_cast/data/models/anime.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAnimeModel_0 extends _i1.SmartFake implements _i2.AnimeModel {
  _FakeAnimeModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AnimeRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnimeRemoteDataSource extends _i1.Mock
    implements _i3.AnimeRemoteDataSource {
  @override
  _i4.Future<List<_i2.AnimeModel>> getAnime() => (super.noSuchMethod(
        Invocation.method(
          #getAnime,
          [],
        ),
        returnValue: _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
      ) as _i4.Future<List<_i2.AnimeModel>>);

  @override
  _i4.Future<List<_i2.AnimeModel>> getTopAnime() => (super.noSuchMethod(
        Invocation.method(
          #getTopAnime,
          [],
        ),
        returnValue: _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
      ) as _i4.Future<List<_i2.AnimeModel>>);

  @override
  _i4.Future<List<_i2.AnimeModel>> getRecommendationAnime() =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecommendationAnime,
          [],
        ),
        returnValue: _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i2.AnimeModel>>.value(<_i2.AnimeModel>[]),
      ) as _i4.Future<List<_i2.AnimeModel>>);

  @override
  _i4.Future<_i2.AnimeModel> getAnimeById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getAnimeById,
          [id],
        ),
        returnValue: _i4.Future<_i2.AnimeModel>.value(_FakeAnimeModel_0(
          this,
          Invocation.method(
            #getAnimeById,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.AnimeModel>.value(_FakeAnimeModel_0(
          this,
          Invocation.method(
            #getAnimeById,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.AnimeModel>);
}
