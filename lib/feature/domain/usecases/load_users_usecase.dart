import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/core/domain/failures/failure.codegen.dart';
import 'package:miniprojectsalt/core/domain/usecases/use_case.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';
import 'package:miniprojectsalt/feature/domain/repositories/auth_repository.dart';

@lazySingleton
class LoadUserUsecase implements UseCase<List<User>, NoParams> {
  final AuthRepository repository;

  LoadUserUsecase(this.repository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams params) async {
    try {
      final response = await repository.loadUsers();
      return right(response);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(
          const Failure.serverFailure(message: 'Cant get data from db'));
    }
  }
}
