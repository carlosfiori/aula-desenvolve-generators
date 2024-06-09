import 'dart:convert';

class Movie {
  Movie({
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
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        movieBanner: json["movie_banner"],
        description: json["description"],
        director: json["director"],
        producer: json["producer"],
        releaseDate: json["release_date"],
        runningTime: json["running_time"],
        rtScore: json["rt_score"],
        url: json["url"],
      );

  final String description;
  final String director;
  final String id;
  final String image;
  final String movieBanner;
  final String producer;
  final String releaseDate;
  final String rtScore;
  final String runningTime;
  final String title;
  final String url;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.id == id &&
        other.title == title &&
        other.image == image &&
        other.movieBanner == movieBanner &&
        other.description == description &&
        other.director == director &&
        other.producer == producer &&
        other.releaseDate == releaseDate &&
        other.runningTime == runningTime &&
        other.rtScore == rtScore &&
        other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        image.hashCode ^
        movieBanner.hashCode ^
        description.hashCode ^
        director.hashCode ^
        producer.hashCode ^
        releaseDate.hashCode ^
        runningTime.hashCode ^
        rtScore.hashCode ^
        url.hashCode;
  }

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, image: $image, movieBanner: $movieBanner, description: $description, director: $director, producer: $producer, releaseDate: $releaseDate, runningTime: $runningTime, rtScore: $rtScore, url: $url)';
  }

  Movie copyWith({
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
  }) =>
      Movie(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
        movieBanner: movieBanner ?? this.movieBanner,
        description: description ?? this.description,
        director: director ?? this.director,
        producer: producer ?? this.producer,
        releaseDate: releaseDate ?? this.releaseDate,
        runningTime: runningTime ?? this.runningTime,
        rtScore: rtScore ?? this.rtScore,
        url: url ?? this.url,
      );

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "movie_banner": movieBanner,
        "description": description,
        "director": director,
        "producer": producer,
        "release_date": releaseDate,
        "running_time": runningTime,
        "rt_score": rtScore,
        "url": url,
      };
}
