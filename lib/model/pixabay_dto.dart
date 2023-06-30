import 'package:json_annotation/json_annotation.dart';
part 'pixabay_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo {
  final int id;
  final String largeImageURL;
  final String tags;
  final int views;
  final int downloads;

  Photo({
    required this.id,
    required this.largeImageURL,
    required this.tags,
    required this.views,
    required this.downloads,
  });

  factory Photo.fromJson(Map<String, dynamic> json) =>
      _$PixabayDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PixabayDtoToJson(this);
}
