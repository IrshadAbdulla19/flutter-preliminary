part of 'home_bloc.dart';

// @freezed
// class HomeEvent with _$HomeEvent {
//   const factory HomeEvent.getHomeList() = _GetHomeList;
// }
@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent({required int pageNum}) = _HomeEvent;

  factory HomeEvent.getHomeList(int pageNum) = _GetHomeList;
}
