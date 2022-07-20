import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  @JsonKey(name: 'albumId')
  final int albumId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'thumbnailUrl')
  final String thumbnailUrl;

  const Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return _$PhotoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PhotoToJson(this);
  }
}
