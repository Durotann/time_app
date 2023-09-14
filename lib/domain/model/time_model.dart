import 'package:alibek_lef/data/repository/api_time_repository.dart';
import 'package:json_annotation/json_annotation.dart';
part 'time_model.g.dart';

@JsonSerializable()
class Data {
  String abbreviation;
  String client_ip;
  String datetime;
  int day_of_week;
  int day_of_year;
  bool dst;
  int? dst_from;
  int dst_offset;
  int? dst_until;
  int raw_offset;
  String timezone;
  int unixtime;
  String utc_datetime;
  String utc_offset;
  int week_number;

  Data({
    required this.abbreviation,
    required this.client_ip,
    required this.datetime,
    required this.day_of_week,
    required this.day_of_year,
    required this.dst,
    required this.dst_from,
    required this.dst_offset,
    required this.dst_until,
    required this.raw_offset,
    required this.timezone,
    required this.unixtime,
    required this.utc_datetime,
    required this.utc_offset,
    required this.week_number,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
