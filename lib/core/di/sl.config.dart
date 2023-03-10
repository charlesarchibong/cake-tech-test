// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cake_tech_test/core/di/register_module.dart' as _i7;
import 'package:cake_tech_test/features/auth/data/data_sources/local_datasource.dart'
    as _i4;
import 'package:cake_tech_test/features/auth/data/repositories/auth_repository_impl.dart'
    as _i6;
import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i4.LocalDatasource>(() => _i4.LocalDatasourceImpl(
        sharedPreferences: gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i5.AuthRepository>(() =>
        _i6.AuthRepositoryImpl(localDatasource: gh<_i4.LocalDatasource>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
