// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';

@JsonSerializable()
class AnimeModel {
  @JsonKey(name: "mal_id")
  int malId;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "images")
  Map<String, Image> images;
  @JsonKey(name: "trailer")
  Trailer trailer;
  @JsonKey(name: "approved")
  bool approved;
  @JsonKey(name: "titles")
  List<Title> titles;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "title_english")
  String titleEnglish;
  @JsonKey(name: "title_japanese")
  String titleJapanese;
  @JsonKey(name: "title_synonyms")
  List<String> titleSynonyms;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "source")
  String source;
  @JsonKey(name: "episodes")
  int episodes;
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "airing")
  bool airing;
  @JsonKey(name: "aired")
  Aired aired;
  @JsonKey(name: "duration")
  String duration;
  @JsonKey(name: "rating")
  String rating;
  @JsonKey(name: "score")
  int score;
  @JsonKey(name: "scored_by")
  int scoredBy;
  @JsonKey(name: "rank")
  int rank;
  @JsonKey(name: "popularity")
  int popularity;
  @JsonKey(name: "members")
  int members;
  @JsonKey(name: "favorites")
  int favorites;
  @JsonKey(name: "synopsis")
  String synopsis;
  @JsonKey(name: "background")
  String background;
  @JsonKey(name: "season")
  String season;
  @JsonKey(name: "year")
  int year;
  @JsonKey(name: "broadcast")
  Broadcast broadcast;
  @JsonKey(name: "producers")
  List<Demographic> producers;
  @JsonKey(name: "licensors")
  List<Demographic> licensors;
  @JsonKey(name: "studios")
  List<Demographic> studios;
  @JsonKey(name: "genres")
  List<Demographic> genres;
  @JsonKey(name: "explicit_genres")
  List<Demographic> explicitGenres;
  @JsonKey(name: "themes")
  List<Demographic> themes;
  @JsonKey(name: "demographics")
  List<Demographic> demographics;

  AnimeModel({
    required this.malId,
    required this.url,
    required this.images,
    required this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    required this.titleEnglish,
    required this.titleJapanese,
    required this.titleSynonyms,
    required this.type,
    required this.source,
    required this.episodes,
    required this.status,
    required this.airing,
    required this.aired,
    required this.duration,
    required this.rating,
    required this.score,
    required this.scoredBy,
    required this.rank,
    required this.popularity,
    required this.members,
    required this.favorites,
    required this.synopsis,
    required this.background,
    required this.season,
    required this.year,
    required this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  AnimeModel copyWith({
    int? malId,
    String? url,
    Map<String, Image>? images,
    Trailer? trailer,
    bool? approved,
    List<Title>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Aired? aired,
    String? duration,
    String? rating,
    int? score,
    int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    Broadcast? broadcast,
    List<Demographic>? producers,
    List<Demographic>? licensors,
    List<Demographic>? studios,
    List<Demographic>? genres,
    List<Demographic>? explicitGenres,
    List<Demographic>? themes,
    List<Demographic>? demographics,
  }) =>
      AnimeModel(
        malId: malId ?? this.malId,
        url: url ?? this.url,
        images: images ?? this.images,
        trailer: trailer ?? this.trailer,
        approved: approved ?? this.approved,
        titles: titles ?? this.titles,
        title: title ?? this.title,
        titleEnglish: titleEnglish ?? this.titleEnglish,
        titleJapanese: titleJapanese ?? this.titleJapanese,
        titleSynonyms: titleSynonyms ?? this.titleSynonyms,
        type: type ?? this.type,
        source: source ?? this.source,
        episodes: episodes ?? this.episodes,
        status: status ?? this.status,
        airing: airing ?? this.airing,
        aired: aired ?? this.aired,
        duration: duration ?? this.duration,
        rating: rating ?? this.rating,
        score: score ?? this.score,
        scoredBy: scoredBy ?? this.scoredBy,
        rank: rank ?? this.rank,
        popularity: popularity ?? this.popularity,
        members: members ?? this.members,
        favorites: favorites ?? this.favorites,
        synopsis: synopsis ?? this.synopsis,
        background: background ?? this.background,
        season: season ?? this.season,
        year: year ?? this.year,
        broadcast: broadcast ?? this.broadcast,
        producers: producers ?? this.producers,
        licensors: licensors ?? this.licensors,
        studios: studios ?? this.studios,
        genres: genres ?? this.genres,
        explicitGenres: explicitGenres ?? this.explicitGenres,
        themes: themes ?? this.themes,
        demographics: demographics ?? this.demographics,
      );

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}

@JsonSerializable()
class Aired {
  @JsonKey(name: "from")
  String from;
  @JsonKey(name: "to")
  String to;
  @JsonKey(name: "prop")
  Prop prop;

  Aired({
    required this.from,
    required this.to,
    required this.prop,
  });

  Aired copyWith({
    String? from,
    String? to,
    Prop? prop,
  }) =>
      Aired(
        from: from ?? this.from,
        to: to ?? this.to,
        prop: prop ?? this.prop,
      );

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);

  Map<String, dynamic> toJson() => _$AiredToJson(this);
}

@JsonSerializable()
class Prop {
  @JsonKey(name: "from")
  From from;
  @JsonKey(name: "to")
  From to;
  @JsonKey(name: "string")
  String string;

  Prop({
    required this.from,
    required this.to,
    required this.string,
  });

  Prop copyWith({
    From? from,
    From? to,
    String? string,
  }) =>
      Prop(
        from: from ?? this.from,
        to: to ?? this.to,
        string: string ?? this.string,
      );

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);

  Map<String, dynamic> toJson() => _$PropToJson(this);
}

@JsonSerializable()
class From {
  @JsonKey(name: "day")
  int day;
  @JsonKey(name: "month")
  int month;
  @JsonKey(name: "year")
  int year;

  From({
    required this.day,
    required this.month,
    required this.year,
  });

  From copyWith({
    int? day,
    int? month,
    int? year,
  }) =>
      From(
        day: day ?? this.day,
        month: month ?? this.month,
        year: year ?? this.year,
      );

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);

  Map<String, dynamic> toJson() => _$FromToJson(this);
}

@JsonSerializable()
class Broadcast {
  @JsonKey(name: "day")
  String day;
  @JsonKey(name: "time")
  String time;
  @JsonKey(name: "timezone")
  String timezone;
  @JsonKey(name: "string")
  String string;

  Broadcast({
    required this.day,
    required this.time,
    required this.timezone,
    required this.string,
  });

  Broadcast copyWith({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) =>
      Broadcast(
        day: day ?? this.day,
        time: time ?? this.time,
        timezone: timezone ?? this.timezone,
        string: string ?? this.string,
      );

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);

  Map<String, dynamic> toJson() => _$BroadcastToJson(this);
}

@JsonSerializable()
class Demographic {
  @JsonKey(name: "mal_id")
  int malId;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "url")
  String url;

  Demographic({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  Demographic copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) =>
      Demographic(
        malId: malId ?? this.malId,
        type: type ?? this.type,
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory Demographic.fromJson(Map<String, dynamic> json) =>
      _$DemographicFromJson(json);

  Map<String, dynamic> toJson() => _$DemographicToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "image_url")
  String imageUrl;
  @JsonKey(name: "small_image_url")
  String smallImageUrl;
  @JsonKey(name: "large_image_url")
  String largeImageUrl;

  Image({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  Image copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) =>
      Image(
        imageUrl: imageUrl ?? this.imageUrl,
        smallImageUrl: smallImageUrl ?? this.smallImageUrl,
        largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      );

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Title {
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "title")
  String title;

  Title({
    required this.type,
    required this.title,
  });

  Title copyWith({
    String? type,
    String? title,
  }) =>
      Title(
        type: type ?? this.type,
        title: title ?? this.title,
      );

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class Trailer {
  @JsonKey(name: "youtube_id")
  String youtubeId;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "embed_url")
  String embedUrl;

  Trailer({
    required this.youtubeId,
    required this.url,
    required this.embedUrl,
  });

  Trailer copyWith({
    String? youtubeId,
    String? url,
    String? embedUrl,
  }) =>
      Trailer(
        youtubeId: youtubeId ?? this.youtubeId,
        url: url ?? this.url,
        embedUrl: embedUrl ?? this.embedUrl,
      );

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}
