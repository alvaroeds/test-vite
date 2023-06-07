import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
import 'package:pedido_listo_web/features/user/domain/i_user_repository.dart';

class SaveUserUseCase {
  final InterfaceUserRepository _userRepository;

  SaveUserUseCase(this._userRepository);

  Future<void> execute(UserDto user) {
    return _userRepository.saveUser(user);
  }
}
