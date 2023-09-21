import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preliminary/domain/core/failers/main_failure.dart';
import 'package:preliminary/domain/home/i_home_repo.dart';

import '../../domain/home/models/home.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IhomeRepo homeRepo;
  HomeBloc(this.homeRepo) : super(HomeState.initial()) {
    on<_GetHomeList>((event, emit) async {
      // List<HomeScreen> users = state.homeList;
      emit(state.copyWith(isLoading: false, homeListFailuerOrSucess: none()));

      final Either<MainFailure, List<HomeScreen>> homeOption =
          await homeRepo.getHomeList(event.pageNum);
      emit(homeOption.fold(
          (faliure) => state.copyWith(
              isLoading: false,
              homeListFailuerOrSucess: Some(Left(faliure))), (success) {
        // users.addAll(success);
        return state.copyWith(
            isLoading: false,
            homeList: success,
            homeListFailuerOrSucess: Some(Right(success)));
      }));
    });
  }
}
