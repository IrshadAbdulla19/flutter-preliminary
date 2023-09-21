import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:preliminary/domain/core/api_end_points.dart';
import 'package:preliminary/domain/core/failers/main_failure.dart';
import 'package:preliminary/domain/home/i_home_repo.dart';
import 'package:preliminary/domain/home/models/home.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IhomeRepo)
class HomeRepository implements IhomeRepo {
  @override
  Future<Either<MainFailure, List<HomeScreen>>> getHomeList(int pageNum) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get("${ApiEndPoints.getAlluserList}$pageNum");
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final List<HomeScreen> homelist = [];
        final homelist = (response.data['data'] as List).map((e) {
          return HomeScreen.fromJson(e);
        }).toList();

        print(homelist);
        return Right(homelist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("the catched erorr is $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
