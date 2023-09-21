// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int userId) $default, {
    required TResult Function(int userId) getUserDetiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int userId)? $default, {
    TResult? Function(int userId)? getUserDetiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int userId)? $default, {
    TResult Function(int userId)? getUserDetiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEvent value) $default, {
    required TResult Function(_GetUserDetiles value) getUserDetiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEvent value)? $default, {
    TResult? Function(_GetUserDetiles value)? getUserDetiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEvent value)? $default, {
    TResult Function(_GetUserDetiles value)? getUserDetiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEventCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$$_UserEventCopyWith(
          _$_UserEvent value, $Res Function(_$_UserEvent) then) =
      __$$_UserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$_UserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEvent>
    implements _$$_UserEventCopyWith<$Res> {
  __$$_UserEventCopyWithImpl(
      _$_UserEvent _value, $Res Function(_$_UserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_UserEvent(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserEvent implements _UserEvent {
  const _$_UserEvent({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEvent &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEventCopyWith<_$_UserEvent> get copyWith =>
      __$$_UserEventCopyWithImpl<_$_UserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int userId) $default, {
    required TResult Function(int userId) getUserDetiles,
  }) {
    return $default(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int userId)? $default, {
    TResult? Function(int userId)? getUserDetiles,
  }) {
    return $default?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int userId)? $default, {
    TResult Function(int userId)? getUserDetiles,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEvent value) $default, {
    required TResult Function(_GetUserDetiles value) getUserDetiles,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEvent value)? $default, {
    TResult? Function(_GetUserDetiles value)? getUserDetiles,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEvent value)? $default, {
    TResult Function(_GetUserDetiles value)? getUserDetiles,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserEvent implements UserEvent {
  const factory _UserEvent({required final int userId}) = _$_UserEvent;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_UserEventCopyWith<_$_UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserDetilesCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$_GetUserDetilesCopyWith(
          _$_GetUserDetiles value, $Res Function(_$_GetUserDetiles) then) =
      __$$_GetUserDetilesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$_GetUserDetilesCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetUserDetiles>
    implements _$$_GetUserDetilesCopyWith<$Res> {
  __$$_GetUserDetilesCopyWithImpl(
      _$_GetUserDetiles _value, $Res Function(_$_GetUserDetiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_GetUserDetiles(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetUserDetiles implements _GetUserDetiles {
  _$_GetUserDetiles(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.getUserDetiles(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserDetiles &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserDetilesCopyWith<_$_GetUserDetiles> get copyWith =>
      __$$_GetUserDetilesCopyWithImpl<_$_GetUserDetiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int userId) $default, {
    required TResult Function(int userId) getUserDetiles,
  }) {
    return getUserDetiles(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int userId)? $default, {
    TResult? Function(int userId)? getUserDetiles,
  }) {
    return getUserDetiles?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int userId)? $default, {
    TResult Function(int userId)? getUserDetiles,
    required TResult orElse(),
  }) {
    if (getUserDetiles != null) {
      return getUserDetiles(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEvent value) $default, {
    required TResult Function(_GetUserDetiles value) getUserDetiles,
  }) {
    return getUserDetiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEvent value)? $default, {
    TResult? Function(_GetUserDetiles value)? getUserDetiles,
  }) {
    return getUserDetiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEvent value)? $default, {
    TResult Function(_GetUserDetiles value)? getUserDetiles,
    required TResult orElse(),
  }) {
    if (getUserDetiles != null) {
      return getUserDetiles(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetiles implements UserEvent {
  factory _GetUserDetiles(final int userId) = _$_GetUserDetiles;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_GetUserDetilesCopyWith<_$_GetUserDetiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  Option<Either<MainFailure, UserModel>> get userFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserModel? user,
      Option<Either<MainFailure, UserModel>> userFailureOrSuccess});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? userFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userFailureOrSuccess: null == userFailureOrSuccess
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserModel? user,
      Option<Either<MainFailure, UserModel>> userFailureOrSuccess});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? userFailureOrSuccess = null,
  }) {
    return _then(_$_UserState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userFailureOrSuccess: null == userFailureOrSuccess
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.isLoading, this.user, required this.userFailureOrSuccess});

  @override
  final bool isLoading;
  @override
  final UserModel? user;
  @override
  final Option<Either<MainFailure, UserModel>> userFailureOrSuccess;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, user: $user, userFailureOrSuccess: $userFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userFailureOrSuccess, userFailureOrSuccess) ||
                other.userFailureOrSuccess == userFailureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, user, userFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final bool isLoading,
      final UserModel? user,
      required final Option<Either<MainFailure, UserModel>>
          userFailureOrSuccess}) = _$_UserState;

  @override
  bool get isLoading;
  @override
  UserModel? get user;
  @override
  Option<Either<MainFailure, UserModel>> get userFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
