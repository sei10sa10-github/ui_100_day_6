// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excersize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Excersize _$_$_ExcersizeFromJson(Map<String, dynamic> json) {
  return _$_Excersize(
    title: json['title'] as String,
    image: json['image'] as String,
    steps: json['steps'] as int,
    sports: json['sports'] as int,
    excersize: json['excersize'] as int,
    category: (json['category'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ExcersizeToJson(_$_Excersize instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'steps': instance.steps,
      'sports': instance.sports,
      'excersize': instance.excersize,
      'category': instance.category,
    };
