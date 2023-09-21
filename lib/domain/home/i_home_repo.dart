import 'package:dartz/dartz.dart';
import 'package:preliminary/domain/core/failers/main_failure.dart';

import 'models/home.dart';

abstract class IhomeRepo {
  Future<Either<MainFailure, List<HomeScreen>>> getHomeList(int pageNum);
}
