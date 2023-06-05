import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
import 'package:pedido_listo_web/features/user/domain/i_user_repository.dart';

class LoadUserUseCase {
  final InterfaceUserRepository _userRepository;

  LoadUserUseCase(this._userRepository);

  Future<UserDto> execute() {
    return _userRepository.getUser();
  }
}
