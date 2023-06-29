import 'package:json_annotation/json_annotation.dart';
part 'pixabay_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PixabayDto {
  final int id;
  final String webformatURL;
  final String largeImageURL;
  final String tags;
  final int views;
  final int downloads;

  PixabayDto({
    required this.id,
    required this.webformatURL,
    required this.largeImageURL,
    required this.tags,
    required this.views,
    required this.downloads,
  });

  factory PixabayDto.fromJson(Map<String, dynamic> json) =>
      _$PixabayDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PixabayDtoToJson(this);
}
