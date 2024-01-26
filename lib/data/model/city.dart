import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  City(this.name);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
