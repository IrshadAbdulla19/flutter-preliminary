import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_screen_animation_state.dart';

class UserScreenAnimationCubit extends Cubit<UserScreenAnimationState> {
  UserScreenAnimationCubit() : super(UserScreenAnimationInitial());
}
