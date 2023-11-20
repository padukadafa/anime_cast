// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:anime_cast/core/error/server_error.dart';
import 'package:anime_cast/data/data_sources/anime_remote_data_source.dart';
import 'package:anime_cast/data/models/anime.dart';
import 'package:http/http.dart' as http;

class AnimeRemoteDataSourceImpl extends AnimeRemoteDataSource {
  final http.Client client;
  AnimeRemoteDataSourceImpl(this.client);
  static const BASE_URL = 'https://api.jikan.moe/v4';
  @override
  Future<List<AnimeModel>> getAnime() async {
    final response = await client.get(Uri.parse("$BASE_URL/anime"));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body)['data'] as List;
      final result = jsonBody.map((e) => AnimeModel.fromJson(e)).toList();
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<AnimeModel> getAnimeById(int id) async {
    final response = await client.get(Uri.parse("$BASE_URL/anime/$id"));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body)['data'];
      final result = AnimeModel.fromJson(jsonBody);
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<AnimeModel>> getRecommendationAnime() async {
    final response =
        await client.get(Uri.parse("$BASE_URL/recommendations/anime"));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body)['data'] as List;
      final result = jsonBody.map((e) => AnimeModel.fromJson(e)).toList();
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<AnimeModel>> getTopAnime() async {
    final response = await client.get(Uri.parse("$BASE_URL/top/anime"));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body)['data'] as List;
      final result = jsonBody.map((e) => AnimeModel.fromJson(e)).toList();
      return result;
    } else {
      throw ServerException();
    }
  }
}
