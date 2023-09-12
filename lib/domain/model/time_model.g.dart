// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      abbreviation: json['abbreviation'] as String,
      client_ip: json['client_ip'] as String,
      datetime: json['datetime'] as String,
      day_of_week: json['day_of_week'] as int,
      day_of_year: json['day_of_year'] as int,
      dst: json['dst'] as bool,
      dst_from: json['dst_from'] as int?,
      dst_offset: json['dst_offset'] as int,
      dst_until: json['dst_until'] as int?,
      raw_offset: json['raw_offset'] as int,
      timezone: json['timezone'] as String,
      unixtime: json['unixtime'] as int,
      utc_datetime: json['utc_datetime'] as String,
      utc_offset: json['utc_offset'] as String,
      week_number: json['week_number'] as int,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'abbreviation': instance.abbreviation,
      'client_ip': instance.client_ip,
      'datetime': instance.datetime,
      'day_of_week': instance.day_of_week,
      'day_of_year': instance.day_of_year,
      'dst': instance.dst,
      'dst_from': instance.dst_from,
      'dst_offset': instance.dst_offset,
      'dst_until': instance.dst_until,
      'raw_offset': instance.raw_offset,
      'timezone': instance.timezone,
      'unixtime': instance.unixtime,
      'utc_datetime': instance.utc_datetime,
      'utc_offset': instance.utc_offset,
      'week_number': instance.week_number,
    };
