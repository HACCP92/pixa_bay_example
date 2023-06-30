// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PixabayDtoFromJson(Map<String, dynamic> json) => Photo(
      id: json['id'] as int,
      largeImageURL: json['largeImageURL'] as String,
      tags: json['tags'] as String,
      views: json['views'] as int,
      downloads: json['downloads'] as int,
    );

Map<String, dynamic> _$PixabayDtoToJson(Photo instance) => <String, dynamic>{
      'id': instance.id,
      'largeImageURL': instance.largeImageURL,
      'tags': instance.tags,
      'views': instance.views,
      'downloads': instance.downloads,
    };
