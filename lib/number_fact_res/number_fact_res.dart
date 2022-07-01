import 'package:json_annotation/json_annotation.dart';

part 'number_fact_res.g.dart';

@JsonSerializable()
class NumberFactRes {
  @JsonKey(name : 'text')
  String? text;

  @JsonKey(name : 'number')
  int? number;

   @JsonKey(name : 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumberFactRes({this.text, this.number, this.found, this.type});

  factory NumberFactRes.fromJson(Map<String, dynamic> json) {
    return _$NumberFactResFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberFactResToJson(this);
}
