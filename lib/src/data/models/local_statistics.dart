import 'package:json_annotation/json_annotation.dart';

part 'local_statistics.g.dart';

@JsonSerializable()
class LocalStatisticsEntry {
  String name;
  DateTime date;
  int cases;
  int deaths;
  int recoveries;

  LocalStatisticsEntry({
    this.name,
    this.date,
    this.cases,
    this.deaths,
    this.recoveries,
  });

  factory LocalStatisticsEntry.fromJson(Map<String, dynamic> json) =>
      _$LocalStatisticsEntryFromJson(json);

  Map<String, dynamic> toJson() => _$LocalStatisticsEntryToJson(this);

  @override
  String toString() => 'LocalStatisticsEntry { name: $name, date: $date }';
}
