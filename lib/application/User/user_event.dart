part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent({required int userId}) = _UserEvent;

  factory UserEvent.getUserDetiles(int userId) = _GetUserDetiles;
}
