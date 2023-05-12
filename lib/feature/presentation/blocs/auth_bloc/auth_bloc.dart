import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/core/domain/usecases/use_case.dart';
import 'package:miniprojectsalt/core/extensions/dartz_extensions.dart';
import 'package:miniprojectsalt/feature/domain/usecases/load_users_usecase.dart';
import 'package:miniprojectsalt/feature/domain/usecases/login_usecase.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._login, this._loadUser) : super(AuthState.initial()) {
    on<Login>(_onLogin);
    on<LoadUsers>(_onLoadUsers);
  }

  final LoginUsecase _login;
  final LoadUserUsecase _loadUser;

  FutureOr<void> _onLogin(
    Login event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _login
        .call(ParamsLogin(email: event.email, password: event.password));
    if (result.isLeft()) {
      emit(
        state.copyWith(
            tokenOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          tokenOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          tokenOrFailureOption: none(),
          token: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }

  FutureOr<void> _onLoadUsers(
    LoadUsers event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _loadUser(NoParams());
    if (result.isLeft()) {
      emit(
        state.copyWith(
            usersOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          usersOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          usersOrFailureOption: none(),
          users: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }
}
