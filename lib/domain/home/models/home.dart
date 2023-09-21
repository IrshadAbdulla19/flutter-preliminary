import 'package:freezed_annotation/freezed_annotation.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeScreen with _$HomeScreen {
  const factory HomeScreen({
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "first_name") required String? firstName,
    @JsonKey(name: "last_name") required String? lastName,
    @JsonKey(name: "avatar") required String? avatar,
  }) = _HomeScreen;

  factory HomeScreen.fromJson(Map<String, dynamic> json) =>
      _$HomeScreenFromJson(json);
}
