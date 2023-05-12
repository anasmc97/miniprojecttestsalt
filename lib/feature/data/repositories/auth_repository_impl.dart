import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/feature/data/datasources/remote/auth_remote_data_source.dart';
import 'package:miniprojectsalt/feature/data/models/user_model.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';
import 'package:miniprojectsalt/feature/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<String?> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }

  @override
  Future<List<User>> loadUsers() {
    return remoteDataSource
        .loadUsers()
        .then((value) => value.map((e) => e.toDomain()).toList());
  }
}
