part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required List<HomeScreen> homeList,
      required Option<Either<MainFailure, List<HomeScreen>>>
          homeListFailuerOrSucess}) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        isLoading: false, homeList: [], homeListFailuerOrSucess: None());
  }
}
