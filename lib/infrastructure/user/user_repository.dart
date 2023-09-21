import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:preliminary/domain/core/api_end_points.dart';
import 'package:preliminary/domain/core/failers/main_failure.dart';
import 'package:preliminary/domain/user/i_user_repo.dart';
import 'package:dio/dio.dart';

import '../../domain/user/models/user.dart';

@LazySingleton(as: IuserRepo)
class UserRepository implements IuserRepo {
  @override
  Future<Either<MainFailure, UserModel>> getUserDetiles(int userId) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get("${ApiEndPoints.getUserDetiles}$userId");
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = response.data['data'];
        var user = UserModel.fromJson(data);
        print(user);
        return Right(user);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
