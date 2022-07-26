import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class RepositoryModel {
  String full_name;

  RepositoryModel({this.full_name = ''});

  factory RepositoryModel.fromJson(Map<String, dynamic> json) => _$RepositoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);
}

