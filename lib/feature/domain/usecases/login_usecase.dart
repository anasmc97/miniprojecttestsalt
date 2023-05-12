import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/core/domain/failures/failure.codegen.dart';
import 'package:miniprojectsalt/core/domain/usecases/use_case.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';
import 'package:miniprojectsalt/feature/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUsecase implements UseCase<String, ParamsLogin> {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, String>> call(ParamsLogin params) async {
    try {
      final response = await repository.login(params.email, params.password);
      if (response == null) {
        return left(const Failure.serverFailure(
            message: 'Cant find email on database'));
      }
      return right(response);
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(const Failure.serverFailure(message: 'Cant login'));
    }
  }
}

class ParamsLogin extends Equatable {
  final String email;
  final String password;

  const ParamsLogin({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
