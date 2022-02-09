import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_model.freezed.dart';

part 'score_model.g.dart';

@freezed
class ScoreModel with _$ScoreModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ScoreModel({
    required String uid,
    // ignore: non_constant_identifier_names
    required String game_uid,
    // ignore: non_constant_identifier_names
    required String user_uid,
    required int score,
    required String date,
  }) = _ScoreModel;

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);
}
