// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeScreen _$HomeScreenFromJson(Map<String, dynamic> json) {
  return _HomeScreen.fromJson(json);
}

/// @nodoc
mixin _$HomeScreen {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeScreenCopyWith<HomeScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenCopyWith<$Res> {
  factory $HomeScreenCopyWith(
          HomeScreen value, $Res Function(HomeScreen) then) =
      _$HomeScreenCopyWithImpl<$Res, HomeScreen>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$HomeScreenCopyWithImpl<$Res, $Val extends HomeScreen>
    implements $HomeScreenCopyWith<$Res> {
  _$HomeScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeScreenCopyWith<$Res>
    implements $HomeScreenCopyWith<$Res> {
  factory _$$_HomeScreenCopyWith(
          _$_HomeScreen value, $Res Function(_$_HomeScreen) then) =
      __$$_HomeScreenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$$_HomeScreenCopyWithImpl<$Res>
    extends _$HomeScreenCopyWithImpl<$Res, _$_HomeScreen>
    implements _$$_HomeScreenCopyWith<$Res> {
  __$$_HomeScreenCopyWithImpl(
      _$_HomeScreen _value, $Res Function(_$_HomeScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_HomeScreen(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeScreen implements _HomeScreen {
  const _$_HomeScreen(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "avatar") required this.avatar});

  factory _$_HomeScreen.fromJson(Map<String, dynamic> json) =>
      _$$_HomeScreenFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'HomeScreen(id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreen &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenCopyWith<_$_HomeScreen> get copyWith =>
      __$$_HomeScreenCopyWithImpl<_$_HomeScreen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeScreenToJson(
      this,
    );
  }
}

abstract class _HomeScreen implements HomeScreen {
  const factory _HomeScreen(
      {@JsonKey(name: "id") required final int? id,
      @JsonKey(name: "first_name") required final String? firstName,
      @JsonKey(name: "last_name") required final String? lastName,
      @JsonKey(name: "avatar") required final String? avatar}) = _$_HomeScreen;

  factory _HomeScreen.fromJson(Map<String, dynamic> json) =
      _$_HomeScreen.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenCopyWith<_$_HomeScreen> get copyWith =>
      throw _privateConstructorUsedError;
}
