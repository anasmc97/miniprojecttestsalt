import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miniprojectsalt/core/domain/failures/failure.codegen.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';

part 'auth_state.freezed.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class AuthState implements _$AuthState {
  const factory AuthState({
    required String token,
    required List<User> users,
    required Option<Either<Failure, List<User>>> usersOrFailureOption,
    required Option<Either<Failure, String>> tokenOrFailureOption,
    required Status status,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      token: "",
      users: [],
      status: Status.initial,
      usersOrFailureOption: none(),
      tokenOrFailureOption: none(),
    );
  }
}
