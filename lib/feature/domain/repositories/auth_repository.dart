import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<String?> login(String email, String password);
  Future<List<User>> loadUsers();
}
