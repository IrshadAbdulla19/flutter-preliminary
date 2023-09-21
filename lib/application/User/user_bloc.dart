import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preliminary/domain/user/i_user_repo.dart';

import '../../domain/core/failers/main_failure.dart';
import '../../domain/user/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IuserRepo userRepo;
  UserBloc(this.userRepo) : super(UserState.initial()) {
    on<_GetUserDetiles>((event, emit) async {
      emit(state.copyWith(isLoading: false, userFailureOrSuccess: none()));

      final Either<MainFailure, UserModel> userOption =
          await userRepo.getUserDetiles(event.userId);
      emit(userOption.fold(
          (failure) => state.copyWith(
              isLoading: false, userFailureOrSuccess: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              user: success,
              userFailureOrSuccess: Some(Right(success)))));
    });
  }
}
