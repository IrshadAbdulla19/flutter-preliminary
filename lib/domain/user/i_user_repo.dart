import 'package:dartz/dartz.dart';
import 'package:preliminary/domain/core/failers/main_failure.dart';

import 'models/user.dart';

abstract class IuserRepo {
  Future<Either<MainFailure, UserModel>> getUserDetiles(int userId);
}
