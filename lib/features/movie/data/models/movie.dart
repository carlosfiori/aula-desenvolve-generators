import 'package:autoequal/autoequal.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@autoequal
@CopyWith()
@JsonSerializable(fieldRename: FieldRename.snake)
class Movie extends Equatable {
  const Movie({
    required this.id,
    required this.title,
    required this.image,
    required this.movieBanner,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.runningTime,
    required this.rtScore,
    required this.url,
    required this.originalTitle,
    required this.originalTitleRomanised,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  final String description;
  final String director;
  final String id;
  final String image;
  final String movieBanner;
  final String originalTitle;
  final String originalTitleRomanised;
  final String producer;
  final String releaseDate;
  final String rtScore;
  final String runningTime;
  final String title;
  final String url;

  @override
  List<Object?> get props => _$props;

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
