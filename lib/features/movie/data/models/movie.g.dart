// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$MovieAutoequal on Movie {
  List<Object?> get _$props => [
        description,
        director,
        id,
        image,
        movieBanner,
        originalTitle,
        originalTitleRomanised,
        producer,
        releaseDate,
        rtScore,
        runningTime,
        title,
        url,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieCWProxy {
  Movie id(String id);

  Movie title(String title);

  Movie image(String image);

  Movie movieBanner(String movieBanner);

  Movie description(String description);

  Movie director(String director);

  Movie producer(String producer);

  Movie releaseDate(String releaseDate);

  Movie runningTime(String runningTime);

  Movie rtScore(String rtScore);

  Movie url(String url);

  Movie originalTitle(String originalTitle);

  Movie originalTitleRomanised(String originalTitleRomanised);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Movie(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Movie(...).copyWith(id: 12, name: "My name")
  /// ````
  Movie call({
    String? id,
    String? title,
    String? image,
    String? movieBanner,
    String? description,
    String? director,
    String? producer,
    String? releaseDate,
    String? runningTime,
    String? rtScore,
    String? url,
    String? originalTitle,
    String? originalTitleRomanised,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovie.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovie.copyWith.fieldName(...)`
class _$MovieCWProxyImpl implements _$MovieCWProxy {
  const _$MovieCWProxyImpl(this._value);

  final Movie _value;

  @override
  Movie id(String id) => this(id: id);

  @override
  Movie title(String title) => this(title: title);

  @override
  Movie image(String image) => this(image: image);

  @override
  Movie movieBanner(String movieBanner) => this(movieBanner: movieBanner);

  @override
  Movie description(String description) => this(description: description);

  @override
  Movie director(String director) => this(director: director);

  @override
  Movie producer(String producer) => this(producer: producer);

  @override
  Movie releaseDate(String releaseDate) => this(releaseDate: releaseDate);

  @override
  Movie runningTime(String runningTime) => this(runningTime: runningTime);

  @override
  Movie rtScore(String rtScore) => this(rtScore: rtScore);

  @override
  Movie url(String url) => this(url: url);

  @override
  Movie originalTitle(String originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  Movie originalTitleRomanised(String originalTitleRomanised) =>
      this(originalTitleRomanised: originalTitleRomanised);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Movie(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Movie(...).copyWith(id: 12, name: "My name")
  /// ````
  Movie call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? movieBanner = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? director = const $CopyWithPlaceholder(),
    Object? producer = const $CopyWithPlaceholder(),
    Object? releaseDate = const $CopyWithPlaceholder(),
    Object? runningTime = const $CopyWithPlaceholder(),
    Object? rtScore = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? originalTitle = const $CopyWithPlaceholder(),
    Object? originalTitleRomanised = const $CopyWithPlaceholder(),
  }) {
    return Movie(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      image: image == const $CopyWithPlaceholder() || image == null
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String,
      movieBanner:
          movieBanner == const $CopyWithPlaceholder() || movieBanner == null
              ? _value.movieBanner
              // ignore: cast_nullable_to_non_nullable
              : movieBanner as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      director: director == const $CopyWithPlaceholder() || director == null
          ? _value.director
          // ignore: cast_nullable_to_non_nullable
          : director as String,
      producer: producer == const $CopyWithPlaceholder() || producer == null
          ? _value.producer
          // ignore: cast_nullable_to_non_nullable
          : producer as String,
      releaseDate:
          releaseDate == const $CopyWithPlaceholder() || releaseDate == null
              ? _value.releaseDate
              // ignore: cast_nullable_to_non_nullable
              : releaseDate as String,
      runningTime:
          runningTime == const $CopyWithPlaceholder() || runningTime == null
              ? _value.runningTime
              // ignore: cast_nullable_to_non_nullable
              : runningTime as String,
      rtScore: rtScore == const $CopyWithPlaceholder() || rtScore == null
          ? _value.rtScore
          // ignore: cast_nullable_to_non_nullable
          : rtScore as String,
      url: url == const $CopyWithPlaceholder() || url == null
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      originalTitle:
          originalTitle == const $CopyWithPlaceholder() || originalTitle == null
              ? _value.originalTitle
              // ignore: cast_nullable_to_non_nullable
              : originalTitle as String,
      originalTitleRomanised:
          originalTitleRomanised == const $CopyWithPlaceholder() ||
                  originalTitleRomanised == null
              ? _value.originalTitleRomanised
              // ignore: cast_nullable_to_non_nullable
              : originalTitleRomanised as String,
    );
  }
}

extension $MovieCopyWith on Movie {
  /// Returns a callable class that can be used as follows: `instanceOfMovie.copyWith(...)` or like so:`instanceOfMovie.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieCWProxy get copyWith => _$MovieCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      movieBanner: json['movie_banner'] as String,
      description: json['description'] as String,
      director: json['director'] as String,
      producer: json['producer'] as String,
      releaseDate: json['release_date'] as String,
      runningTime: json['running_time'] as String,
      rtScore: json['rt_score'] as String,
      url: json['url'] as String,
      originalTitle: json['original_title'] as String,
      originalTitleRomanised: json['original_title_romanised'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'description': instance.description,
      'director': instance.director,
      'id': instance.id,
      'image': instance.image,
      'movie_banner': instance.movieBanner,
      'original_title': instance.originalTitle,
      'original_title_romanised': instance.originalTitleRomanised,
      'producer': instance.producer,
      'release_date': instance.releaseDate,
      'rt_score': instance.rtScore,
      'running_time': instance.runningTime,
      'title': instance.title,
      'url': instance.url,
    };
