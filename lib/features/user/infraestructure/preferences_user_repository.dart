import 'dart:convert';

import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
import 'package:pedido_listo_web/features/user/domain/i_user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUserRepository implements InterfaceUserRepository {
  final SharedPreferences sharedPreferences;

  PreferencesUserRepository(this.sharedPreferences);

  @override
  Future<void> deleteUser() async {}

  static const USER_KEY =
      String.fromEnvironment('USER_KEY', defaultValue: 'USER');

  @override
  Future<UserDto> getUser() async {
    final dataString = sharedPreferences.getString(USER_KEY);

    if (dataString == null) return UserDto.create();

    final data = json.decode(dataString);

    return UserDto.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> saveUser(UserDto user) {
    final encode = json.encode(user.toJson());

    return sharedPreferences.setString(USER_KEY, encode);
  }
}
