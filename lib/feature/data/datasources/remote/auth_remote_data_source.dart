import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/core/utils/constants.dart';
import 'package:miniprojectsalt/feature/data/models/user_model.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<String?> login(String email, String password);
  Future<List<UserModel>> loadUsers();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<String?> login(String email, String password) async {
    const api = '${ConstantUrl.url}login';
    final dio = Dio();
    final data = {
      "email": email,
      "password": password,
    };
    Response response;
    try {
      response = await dio.post(api, data: data);
      if (response.statusCode == 200) {
        final body = response.data;
        String token = body["token"];
        return token;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<List<UserModel>> loadUsers() async {
    const api = '${ConstantUrl.url}users?page=2';
    final dio = Dio();
    Response response;
    try {
      response = await dio.get(api);
      if (response.statusCode == 200) {
        final body = response.data['data'];
        List<UserModel> listUserModel =
            (body as Iterable).map((e) => UserModel.fromJson(e)).toList();
        return listUserModel;
      } else {
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
