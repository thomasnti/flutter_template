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

import '../features/login/data/datasources/fake_api.dart' as _i3;
import '../features/login/data/repositories/user_repo_impl.dart' as _i5;
import '../features/login/domain/repositories/user_repo.dart' as _i4;
import '../features/login/domain/usecases/login_user.dart' as _i6;
import '../features/login/presentation/bloc/login_bloc.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initDependencies({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.FakeApi>(() => _i3.FakeApiImpl());
    gh.lazySingleton<_i4.UserRepo>(
        () => _i5.UserRepoImpl(fakeApi: gh<_i3.FakeApi>()));
    gh.lazySingleton<_i6.LoginUser>(() => _i6.LoginUser(gh<_i4.UserRepo>()));
    gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i6.LoginUser>()));
    return this;
  }
}
