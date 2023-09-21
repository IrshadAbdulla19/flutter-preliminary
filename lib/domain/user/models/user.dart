import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "email") required String? email,
    @JsonKey(name: "first_name") required String? firstName,
    @JsonKey(name: "last_name") required String? lastName,
    @JsonKey(name: "avatar") required String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
