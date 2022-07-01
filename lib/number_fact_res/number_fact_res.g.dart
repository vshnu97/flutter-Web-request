// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFactRes _$NumberFactResFromJson(Map<String, dynamic> json) =>
    NumberFactRes(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberFactResToJson(NumberFactRes instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
