// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  String get token => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  Option<Either<Failure, List<User>>> get usersOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get tokenOrFailureOption =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String token,
      List<User> users,
      Option<Either<Failure, List<User>>> usersOrFailureOption,
      Option<Either<Failure, String>> tokenOrFailureOption,
      Status status});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? users = null,
    Object? usersOrFailureOption = null,
    Object? tokenOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      usersOrFailureOption: null == usersOrFailureOption
          ? _value.usersOrFailureOption
          : usersOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<User>>>,
      tokenOrFailureOption: null == tokenOrFailureOption
          ? _value.tokenOrFailureOption
          : tokenOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      List<User> users,
      Option<Either<Failure, List<User>>> usersOrFailureOption,
      Option<Either<Failure, String>> tokenOrFailureOption,
      Status status});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? users = null,
    Object? usersOrFailureOption = null,
    Object? tokenOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_$_AuthState(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      usersOrFailureOption: null == usersOrFailureOption
          ? _value.usersOrFailureOption
          : usersOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<User>>>,
      tokenOrFailureOption: null == tokenOrFailureOption
          ? _value.tokenOrFailureOption
          : tokenOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.token,
      required final List<User> users,
      required this.usersOrFailureOption,
      required this.tokenOrFailureOption,
      required this.status})
      : _users = users;

  @override
  final String token;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final Option<Either<Failure, List<User>>> usersOrFailureOption;
  @override
  final Option<Either<Failure, String>> tokenOrFailureOption;
  @override
  final Status status;

  @override
  String toString() {
    return 'AuthState(token: $token, users: $users, usersOrFailureOption: $usersOrFailureOption, tokenOrFailureOption: $tokenOrFailureOption, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.usersOrFailureOption, usersOrFailureOption) ||
                other.usersOrFailureOption == usersOrFailureOption) &&
            (identical(other.tokenOrFailureOption, tokenOrFailureOption) ||
                other.tokenOrFailureOption == tokenOrFailureOption) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      const DeepCollectionEquality().hash(_users),
      usersOrFailureOption,
      tokenOrFailureOption,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final String token,
      required final List<User> users,
      required final Option<Either<Failure, List<User>>> usersOrFailureOption,
      required final Option<Either<Failure, String>> tokenOrFailureOption,
      required final Status status}) = _$_AuthState;

  @override
  String get token;
  @override
  List<User> get users;
  @override
  Option<Either<Failure, List<User>>> get usersOrFailureOption;
  @override
  Option<Either<Failure, String>> get tokenOrFailureOption;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
