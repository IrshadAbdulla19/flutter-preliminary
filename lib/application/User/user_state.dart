part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState(
      {required bool isLoading,
      UserModel? user,
      required Option<Either<MainFailure, UserModel>>
          userFailureOrSuccess}) = _UserState;

  factory UserState.initial() {
    return const UserState(isLoading: false, userFailureOrSuccess: None());
  }
}
