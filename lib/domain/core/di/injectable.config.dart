// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:preliminary/application/Home/home_bloc.dart' as _i8;
import 'package:preliminary/application/User/user_bloc.dart' as _i7;
import 'package:preliminary/domain/home/i_home_repo.dart' as _i3;
import 'package:preliminary/domain/user/i_user_repo.dart' as _i5;
import 'package:preliminary/infrastructure/home/home_repository.dart' as _i4;
import 'package:preliminary/infrastructure/user/user_repository.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IhomeRepo>(() => _i4.HomeRepository());
    gh.lazySingleton<_i5.IuserRepo>(() => _i6.UserRepository());
    gh.factory<_i7.UserBloc>(() => _i7.UserBloc(gh<_i5.IuserRepo>()));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i3.IhomeRepo>()));
    return this;
  }
}
