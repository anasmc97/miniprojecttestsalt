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
import 'package:miniprojectsalt/core/di/storage_module.dart' as _i12;
import 'package:miniprojectsalt/core/storages/local_storages.dart' as _i11;
import 'package:miniprojectsalt/feature/data/datasources/remote/auth_remote_data_source.dart'
    as _i3;
import 'package:miniprojectsalt/feature/data/repositories/auth_repository_impl.dart'
    as _i5;
import 'package:miniprojectsalt/feature/domain/repositories/auth_repository.dart'
    as _i4;
import 'package:miniprojectsalt/feature/domain/usecases/load_users_usecase.dart'
    as _i7;
import 'package:miniprojectsalt/feature/domain/usecases/login_usecase.dart'
    as _i8;
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i10;
import 'package:miniprojectsalt/shared/flash/presentation/blocs/cubit/flash_cubit.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    final storageModule = _$StorageModule();
    gh.lazySingleton<_i3.AuthRemoteDataSource>(
        () => _i3.AuthRemoteDataSourceImpl());
    gh.lazySingleton<_i4.AuthRepository>(() => _i5.AuthRepositoryImpl(
        remoteDataSource: gh<_i3.AuthRemoteDataSource>()));
    gh.factory<_i6.FlashCubit>(() => _i6.FlashCubit());
    gh.lazySingleton<_i7.LoadUserUsecase>(
        () => _i7.LoadUserUsecase(gh<_i4.AuthRepository>()));
    gh.lazySingleton<_i8.LoginUsecase>(
        () => _i8.LoginUsecase(gh<_i4.AuthRepository>()));
    await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(
          gh<_i8.LoginUsecase>(),
          gh<_i7.LoadUserUsecase>(),
        ));
    gh.lazySingleton<_i11.LocalStorage>(
        () => _i11.LocalStorageImpl(gh<_i9.SharedPreferences>()));
    return this;
  }
}

class _$StorageModule extends _i12.StorageModule {}
