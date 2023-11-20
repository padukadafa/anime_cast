// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
      malId: json['mal_id'] as int,
      url: json['url'] as String,
      images: (json['images'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Image.fromJson(e as Map<String, dynamic>)),
      ),
      trailer: Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      approved: json['approved'] as bool,
      titles: (json['titles'] as List<dynamic>)
          .map((e) => Title.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      titleEnglish: json['title_english'] as String,
      titleJapanese: json['title_japanese'] as String,
      titleSynonyms: (json['title_synonyms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      type: json['type'] as String,
      source: json['source'] as String,
      episodes: json['episodes'] as int,
      status: json['status'] as String,
      airing: json['airing'] as bool,
      aired: Aired.fromJson(json['aired'] as Map<String, dynamic>),
      duration: json['duration'] as String,
      rating: json['rating'] as String,
      score: json['score'] as int,
      scoredBy: json['scored_by'] as int,
      rank: json['rank'] as int,
      popularity: json['popularity'] as int,
      members: json['members'] as int,
      favorites: json['favorites'] as int,
      synopsis: json['synopsis'] as String,
      background: json['background'] as String,
      season: json['season'] as String,
      year: json['year'] as int,
      broadcast: Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      producers: (json['producers'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      licensors: (json['licensors'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      explicitGenres: (json['explicit_genres'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      themes: (json['themes'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: (json['demographics'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'title_synonyms': instance.titleSynonyms,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'licensors': instance.licensors,
      'studios': instance.studios,
      'genres': instance.genres,
      'explicit_genres': instance.explicitGenres,
      'themes': instance.themes,
      'demographics': instance.demographics,
    };

Aired _$AiredFromJson(Map<String, dynamic> json) => Aired(
      from: json['from'] as String,
      to: json['to'] as String,
      prop: Prop.fromJson(json['prop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiredToJson(Aired instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'prop': instance.prop,
    };

Prop _$PropFromJson(Map<String, dynamic> json) => Prop(
      from: From.fromJson(json['from'] as Map<String, dynamic>),
      to: From.fromJson(json['to'] as Map<String, dynamic>),
      string: json['string'] as String,
    );

Map<String, dynamic> _$PropToJson(Prop instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'string': instance.string,
    };

From _$FromFromJson(Map<String, dynamic> json) => From(
      day: json['day'] as int,
      month: json['month'] as int,
      year: json['year'] as int,
    );

Map<String, dynamic> _$FromToJson(From instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) => Broadcast(
      day: json['day'] as String,
      time: json['time'] as String,
      timezone: json['timezone'] as String,
      string: json['string'] as String,
    );

Map<String, dynamic> _$BroadcastToJson(Broadcast instance) => <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

Demographic _$DemographicFromJson(Map<String, dynamic> json) => Demographic(
      malId: json['mal_id'] as int,
      type: json['type'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DemographicToJson(Demographic instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      imageUrl: json['image_url'] as String,
      smallImageUrl: json['small_image_url'] as String,
      largeImageUrl: json['large_image_url'] as String,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      type: json['type'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      youtubeId: json['youtube_id'] as String,
      url: json['url'] as String,
      embedUrl: json['embed_url'] as String,
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
    };
