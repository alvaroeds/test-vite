import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';

abstract interface class InterfaceUserRepository {
  Future<UserDto> getUser();
  Future<void> saveUser(UserDto user);
  Future<void> deleteUser();
}
