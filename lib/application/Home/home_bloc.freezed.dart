// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  int get pageNum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pageNum) $default, {
    required TResult Function(int pageNum) getHomeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pageNum)? $default, {
    TResult? Function(int pageNum)? getHomeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pageNum)? $default, {
    TResult Function(int pageNum)? getHomeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeEvent value) $default, {
    required TResult Function(_GetHomeList value) getHomeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeEvent value)? $default, {
    TResult? Function(_GetHomeList value)? getHomeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeEvent value)? $default, {
    TResult Function(_GetHomeList value)? getHomeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({int pageNum});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = null,
  }) {
    return _then(_value.copyWith(
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$$_HomeEventCopyWith(
          _$_HomeEvent value, $Res Function(_$_HomeEvent) then) =
      __$$_HomeEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNum});
}

/// @nodoc
class __$$_HomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeEvent>
    implements _$$_HomeEventCopyWith<$Res> {
  __$$_HomeEventCopyWithImpl(
      _$_HomeEvent _value, $Res Function(_$_HomeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = null,
  }) {
    return _then(_$_HomeEvent(
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeEvent implements _HomeEvent {
  const _$_HomeEvent({required this.pageNum});

  @override
  final int pageNum;

  @override
  String toString() {
    return 'HomeEvent(pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeEvent &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeEventCopyWith<_$_HomeEvent> get copyWith =>
      __$$_HomeEventCopyWithImpl<_$_HomeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pageNum) $default, {
    required TResult Function(int pageNum) getHomeList,
  }) {
    return $default(pageNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pageNum)? $default, {
    TResult? Function(int pageNum)? getHomeList,
  }) {
    return $default?.call(pageNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pageNum)? $default, {
    TResult Function(int pageNum)? getHomeList,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(pageNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeEvent value) $default, {
    required TResult Function(_GetHomeList value) getHomeList,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeEvent value)? $default, {
    TResult? Function(_GetHomeList value)? getHomeList,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeEvent value)? $default, {
    TResult Function(_GetHomeList value)? getHomeList,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _HomeEvent implements HomeEvent {
  const factory _HomeEvent({required final int pageNum}) = _$_HomeEvent;

  @override
  int get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_HomeEventCopyWith<_$_HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetHomeListCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$_GetHomeListCopyWith(
          _$_GetHomeList value, $Res Function(_$_GetHomeList) then) =
      __$$_GetHomeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNum});
}

/// @nodoc
class __$$_GetHomeListCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeList>
    implements _$$_GetHomeListCopyWith<$Res> {
  __$$_GetHomeListCopyWithImpl(
      _$_GetHomeList _value, $Res Function(_$_GetHomeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = null,
  }) {
    return _then(_$_GetHomeList(
      null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetHomeList implements _GetHomeList {
  _$_GetHomeList(this.pageNum);

  @override
  final int pageNum;

  @override
  String toString() {
    return 'HomeEvent.getHomeList(pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHomeList &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetHomeListCopyWith<_$_GetHomeList> get copyWith =>
      __$$_GetHomeListCopyWithImpl<_$_GetHomeList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pageNum) $default, {
    required TResult Function(int pageNum) getHomeList,
  }) {
    return getHomeList(pageNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pageNum)? $default, {
    TResult? Function(int pageNum)? getHomeList,
  }) {
    return getHomeList?.call(pageNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pageNum)? $default, {
    TResult Function(int pageNum)? getHomeList,
    required TResult orElse(),
  }) {
    if (getHomeList != null) {
      return getHomeList(pageNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HomeEvent value) $default, {
    required TResult Function(_GetHomeList value) getHomeList,
  }) {
    return getHomeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HomeEvent value)? $default, {
    TResult? Function(_GetHomeList value)? getHomeList,
  }) {
    return getHomeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HomeEvent value)? $default, {
    TResult Function(_GetHomeList value)? getHomeList,
    required TResult orElse(),
  }) {
    if (getHomeList != null) {
      return getHomeList(this);
    }
    return orElse();
  }
}

abstract class _GetHomeList implements HomeEvent {
  factory _GetHomeList(final int pageNum) = _$_GetHomeList;

  @override
  int get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_GetHomeListCopyWith<_$_GetHomeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<HomeScreen> get homeList => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<HomeScreen>>> get homeListFailuerOrSucess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreen> homeList,
      Option<Either<MainFailure, List<HomeScreen>>> homeListFailuerOrSucess});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeList = null,
    Object? homeListFailuerOrSucess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeList: null == homeList
          ? _value.homeList
          : homeList // ignore: cast_nullable_to_non_nullable
              as List<HomeScreen>,
      homeListFailuerOrSucess: null == homeListFailuerOrSucess
          ? _value.homeListFailuerOrSucess
          : homeListFailuerOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreen>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreen> homeList,
      Option<Either<MainFailure, List<HomeScreen>>> homeListFailuerOrSucess});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeList = null,
    Object? homeListFailuerOrSucess = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeList: null == homeList
          ? _value._homeList
          : homeList // ignore: cast_nullable_to_non_nullable
              as List<HomeScreen>,
      homeListFailuerOrSucess: null == homeListFailuerOrSucess
          ? _value.homeListFailuerOrSucess
          : homeListFailuerOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreen>>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required final List<HomeScreen> homeList,
      required this.homeListFailuerOrSucess})
      : _homeList = homeList;

  @override
  final bool isLoading;
  final List<HomeScreen> _homeList;
  @override
  List<HomeScreen> get homeList {
    if (_homeList is EqualUnmodifiableListView) return _homeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeList);
  }

  @override
  final Option<Either<MainFailure, List<HomeScreen>>> homeListFailuerOrSucess;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, homeList: $homeList, homeListFailuerOrSucess: $homeListFailuerOrSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._homeList, _homeList) &&
            (identical(
                    other.homeListFailuerOrSucess, homeListFailuerOrSucess) ||
                other.homeListFailuerOrSucess == homeListFailuerOrSucess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_homeList), homeListFailuerOrSucess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final List<HomeScreen> homeList,
      required final Option<Either<MainFailure, List<HomeScreen>>>
          homeListFailuerOrSucess}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  List<HomeScreen> get homeList;
  @override
  Option<Either<MainFailure, List<HomeScreen>>> get homeListFailuerOrSucess;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
