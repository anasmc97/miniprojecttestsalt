import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'avatar') required String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromDomain(User form) => UserModel(
      id: form.id,
      email: form.email,
      firstName: form.firstName,
      lastName: form.lastName,
      avatar: form.avatar);
}

extension UserModelX on UserModel {
  User toDomain() => User(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar);
}
